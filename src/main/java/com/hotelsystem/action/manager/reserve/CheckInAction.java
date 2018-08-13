package com.hotelsystem.action.manager.reserve;

import com.github.pagehelper.PageInfo;
import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.service.ICheckInService;
import com.hotelsystem.service.manager.IOverTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName CheckInAction
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/9 下午2:38
 * @Version 1.0
 **/
@Controller
public class CheckInAction {
    @Autowired

    private ICheckInService checkInService;

    @Autowired
    private IOverTimeService overTimeService;
    @Autowired
    private IOverTimeService oservice;

    /**
     * json传递
     * @return
     */
    @RequestMapping("/CheckInList.action")
    public @ResponseBody PageInfo CheckInList(@RequestParam Integer currentPage){
        int i=overTimeService.countOverTime(new Date() , new Date());
        PageInfo page =checkInService.queryAll(currentPage);

        return page;
    }
    /**
     * 查询详细的入住信息
     */
    @RequestMapping("/CheckDetail.action")
    public ModelAndView checkDetail(@RequestParam String cid){
        ModelAndView modelAndView=new ModelAndView();
        CheckInBean checkInBean=checkInService.queryById(cid);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        //System.out.println(checkInBean.getArriveTime());
        //超出的房费
        double money=oservice.countOverTimeFee(checkInBean.getLeaveTime(), new Date(), checkInBean.getRoom().getRoomType().getName(), 1);
        System.out.println("mp"+money);
        int overTime=oservice.countOverTime(checkInBean.getLeaveTime(),new Date());
        overTime=overTime/2+1;
        if(overTime==1){
            money=money-checkInBean.getPledgeMoney();
        }

        System.out.println("overtime"+overTime);
        System.out.println("moent"+money);
        Map<String,Object> map=new HashMap<>();
        map.put("checkInBean",checkInBean);
        map.put("overTime",overTime);
        map.put("money",money);
        modelAndView.addObject("maps",map);
        modelAndView.setViewName("/html/checkInDetail.jsp");
        return modelAndView;
    }
}
