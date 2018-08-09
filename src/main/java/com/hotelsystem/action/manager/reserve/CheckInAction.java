package com.hotelsystem.action.manager.reserve;

import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.service.ICheckInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
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

    /**
     * json传递
     * @return
     */
    @RequestMapping("/CheckInList.action")
    public ModelAndView CheckInList(){
        ModelAndView mv=new ModelAndView();
        Map<String,Object> check=checkInService.queryAll();
        System.out.println(check);
        mv.addObject("check",check);
        System.out.println(check);
        mv.setViewName("/jsp/ConsumeDetail.jsp");
        return mv;
    }
}
