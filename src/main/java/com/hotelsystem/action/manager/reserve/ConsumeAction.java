package com.hotelsystem.action.manager.reserve;

import com.hotelsystem.bean.SerialBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName ConsumeAction
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/9 上午9:35
 * @Version 1.0
 **/
@Controller
public class ConsumeAction {

    @RequestMapping("/CheckCounsume.action")
    public @ResponseBody
    String CheckCounsume(@RequestBody SerialBean serialBean) {
        //插入订单表
        System.out.println(serialBean);
        //更改房间状态

        //修改会员金额

        return "success";
    }

}
