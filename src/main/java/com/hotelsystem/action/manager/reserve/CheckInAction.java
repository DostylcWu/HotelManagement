package com.hotelsystem.action.manager.reserve;

import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.service.ICheckInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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

    @RequestMapping("/CheckInList.action")
    public ModelAndView CheckInList(){
        ModelAndView mv=new ModelAndView();
        List<CheckInBean> checkInBeans=checkInService.queryAll();
        mv.addObject("checkInBeans",checkInBeans);
        System.out.println(checkInBeans);
        mv.setViewName("/jsp/ConsumeDetail.jsp");
        return mv;
    }
}
