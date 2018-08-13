package com.hotelsystem.action.manager.reserve;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hotelsystem.bean.HotelOverTimeBean;
import com.hotelsystem.service.manager.IOverTimeService;

@Controller
public class OverTimeActionTest {
    @Autowired
    private IOverTimeService oservice;
    @RequestMapping(value="/overTimeFee.action")
    public void findHotelOverTimeRule(){
        SimpleDateFormat df = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        //预计退房时间2018:08:13 12:00:00
        String a="2018:08:13 12:00:00";
        //实际退房时间2018:08:13 12:01:00，超了1分钟
        String b="2018:08:14 18:00:00";
        //转成Date类型
        Date expectDate=null;
        Date actualDate=null;
        try {
            expectDate = df.parse(a);
            actualDate=df.parse(b);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //调用Service超时计费方法，实参分别为预计退房时间、实际退房时间、房间类型以及房间数量
        double money=oservice.countOverTimeFee(expectDate, actualDate, "单人间", 1);
        System.out.println(money);
    }


}
