package com.hotelsystem.service.manager.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotelsystem.bean.HotelOverTimeBean;
import com.hotelsystem.dao.IHotelOverTimeDao;
import com.hotelsystem.dao.IRoomTypeDao;
import com.hotelsystem.service.manager.IOverTimeService;
@Service
public class OverTimeServiceImpl implements IOverTimeService{
	
	@Autowired
	IHotelOverTimeDao dao;
	
	@Autowired
    IRoomTypeDao tdao;

	@Override
	public int countOverTime(Date expectDate, Date actualDate) {
		HotelOverTimeBean bean=dao.findHotelOverTimeRule();
		double r=actualDate.getTime()-expectDate.getTime();
		System.out.println(r);
		//定义halfDay为超出多少个半天
		int halfDay;
		//定义allDay超出多少个1天
		double allDay;
		//如果时间差小于等于计费规则里截止时间二与截止时间一的差值，则多算1个半天的费用
		if(r<=(bean.getOverAllDayStartTime().getTime()-bean.getOverHalfDayStartTime().getTime())){
			halfDay=1;
		}
		//如果时间差小于等于8.64E7 ms即24个小时，多算1个全天的费用
		else if(r<=8.64E7){
			halfDay=2;
		}else{
			//如果超时1天以上，先除以864000算出超出多少天，（100.0）设置为取两位小数
			allDay=(double) (Math.round((actualDate.getTime()-expectDate.getTime())/864000)/100.0);
			//取出超出天数的整数部分为c
			int c=(int) (allDay/1);
			//如果allDay和其整数部分相同，则返回allDay;
			if(allDay==c){
				halfDay=(int) (allDay*2);
			}
			//如果allDay和其整数部分不同，则取出其退房时间时分秒部分和规定退房时间的时分秒部分做差，递归调用countOverTimeFee方法
			else{	
		        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
		        //定义extrayHalfDay为除了超出整数天外，又超出多少个半天
		        int extrayHalfDay=0;
					Date et;
					try {
						et = df.parse(df.format(expectDate));
						Date at=df.parse(df.format(actualDate));
					    //递归调用countOverTimeFee，把加后的时间转为double型
						extrayHalfDay = countOverTime(et,at);
					} catch (ParseException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		        System.out.println(extrayHalfDay);
		        //最后超出的时间为超出整数倍天数再加上g
		        halfDay=2*c+extrayHalfDay;
			}
			
		}
		return halfDay;
	}

	@Override
	public Date findOverHalfDayStartTime() {
		Date endTime=dao.findHotelOverTimeRule().getOverHalfDayStartTime();
		return endTime;
	}

	@Override
	public HotelOverTimeBean findHotelOverTimeRule() {
		HotelOverTimeBean bean=dao.findHotelOverTimeRule();
		return bean;
	}

	@Override
	public double countOverTimeFee(Date expectDate, Date actualDate, String typeName,int count) {
        //如果退房时间在规定退房时间之前或两者相等，则返回0，无超时费
		System.out.println(expectDate.after(actualDate));
		if(expectDate.after(actualDate)||expectDate.equals(actualDate)){
			return 0;
		}
		//先算出超过几个半天的时间
		int overTime=countOverTime(expectDate,actualDate);
		System.out.println("overTime"+overTime);
		//在算出此房间类型的价格
		int price=tdao.findRoomPriceByTypeName(typeName);
		//System.out.println("price"+price);
		//根据超时时间、房间单价、房间数量算出超时费用
		double overMoney=overTime*price*count*0.5;
		return overMoney;
	}

	@Override
	public String updateOverTimeRule(Date newOverHalfDayStartTime, Date newOverAllDayStartTime) {
		//如果两个时间均为空则不能修改
		if(newOverHalfDayStartTime==null&&newOverAllDayStartTime==null){
			return "时间不能全为空，修改失败！";
		}
		SimpleDateFormat df = new SimpleDateFormat("HH:MM:SS");
		HotelOverTimeBean bean=new HotelOverTimeBean();
		try {
			//把时间转成标准格式
			Date half=null;
			Date all=null;
			if(newOverHalfDayStartTime!=null){
				half=df.parse(df.format(newOverHalfDayStartTime));
			}
			if(newOverAllDayStartTime!=null){
				all=df.parse(df.format(newOverAllDayStartTime));
			}
			//如果两个时间一样或规定退房时间在超时一天的时间之后则修改失败
			if(half!=null&&all!=null&&(half.after(all)||half.equals(all))){
			return "修改失败！";
			}
			else{
				bean.setOverHalfDayStartTime(half);
				bean.setOverAllDayStartTime(all);
				int b=dao.updateOverTimeRule(bean);
				if(b>0){
					return "修改成功！";
				}else{
					return "修改失败！";
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "修改失败！";
	}



}
