package com.hotelsystem.action.manager.reserve;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotelsystem.bean.HotelDiscountBean;
import com.hotelsystem.bean.ReserveNumberBean;
import com.hotelsystem.bean.ReservePeopleBean;
import com.hotelsystem.bean.ReserveRoomBean;
import com.hotelsystem.bean.RoomTypeBean;
import com.hotelsystem.service.manager.IHotelDiscountService;

@Controller
public class HotelDiscountAction {
	
	@Autowired
    private IHotelDiscountService dservice;
    /**
     * 通过ID更新折扣 
     * @author Ren Qiang
	 * @Date 2018/8/9 上午11:15
     * @param startTime 折扣开始时间
     * @param endTime 折扣结束时间
     * @param value 折扣值
     * @param id ID值
     * @return 返回更新结果
     */
	@RequestMapping(value="/updateDiscountById.action")
	public String updateDiscountById(String startTime,String endTime,Double value,Integer id){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date stime=null;
		Date etime=null;
		//将传过来的字符串时间装成Date类型
		try {
			stime=df.parse(startTime);
			etime=df.parse(endTime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String result=dservice.updateDiscount(stime, etime, value, id);
		return result;
	}
	/**
     * 添加折扣
     * @author Ren Qiang
	 * @Date 2018/8/9 上午11:16
     * @param startTime 折扣开始时间
     * @param endTime 折扣结束时间
     * @param value 折扣值
     * @return 返回添加结果
     */
	@RequestMapping(value="/addDiscount.action")
	public String addDiscount(String startTime,String endTime,Double value ){
		System.out.println(startTime);
		System.out.println(endTime);
		System.out.println(value);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date stime=null;
		Date etime=null;
		//将传过来的字符串时间装成Date类型
		try {
			if(startTime!=null){
				stime=df.parse(startTime);
			}
			if(endTime!=null){
				etime=df.parse(endTime);
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String result=dservice.addDiscount(stime, etime, value);
		System.out.println(result);
		return result;
	}
	/**
     * 通过ID删除折扣
     * @author Ren Qiang
	 * @Date 2018/8/9 上午11:20
     * @param id 折扣ID
     * @return 返回添加结果
     */
	@RequestMapping(value="/deleteDiscountById.action")
	public String deleteDiscountById(Integer id){
		System.out.println(id);
		String result=dservice.deleteDiscountById(id);
		return result;
	}
	/**
     * 查看所有有效的全场折扣
     * @author Ren Qiang
	 * @Date 2018/8/9 上午11:26
     * @return 返回全场折扣List
     */
	@RequestMapping(value="/findAllDiscount.action")
	public @ResponseBody List<HotelDiscountBean> findAllDiscount(){
		List<HotelDiscountBean> list=dservice.findAllDiscount();
		return list;
	}
	/**
     * 查看当天是否有全场折扣
     * @author Ren Qiang
	 * @Date 2018/8/9 上午11:26
     * @return 返回当天折扣
     */
	@RequestMapping(value="/findDiscountByDate.action")
	public @ResponseBody HotelDiscountBean findDiscountByDate(){
		HotelDiscountBean bean=dservice.findDiscountByDate();
		return bean;
	}

}
