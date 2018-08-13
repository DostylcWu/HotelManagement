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

import java.util.Date;

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
        modelAndView.addObject("checkInBean",checkInBean);
        modelAndView.setViewName("/html/checkInDetail.jsp");
        return modelAndView;
    }
}
