package com.hotelsystem.action.manager.reserve;

import com.hotelsystem.bean.SerialBean;
import com.hotelsystem.service.SerialService;
import com.hotelsystem.service.manager.IMenmbersService;
import com.hotelsystem.service.manager.IRoomInfoService;
import com.hotelsystem.utils.AesEncodeTUtil;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    private SerialService serialService;
    @Autowired
    private IRoomInfoService iRoomInfoService;
    @Autowired
    private IMenmbersService iMenmbersService;

    @RequestMapping("/CheckCounsume.action")
    public @ResponseBody
    String CheckCounsume(@RequestBody SerialBean serialBean) {
        String money = "";
        int moneys = 0;
        //插入订单表
        serialService.insert(serialBean);

        //更改房间状态
        iRoomInfoService.updateRoomStateById(serialBean.getSeCRoom(), 2);
        //修改会员金额
        try {
            money = (AesEncodeTUtil.decryptAES(serialBean.getSePaidMoney())).trim();
            moneys = Integer.parseInt(money);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (serialBean.getSePhone() != null) {
            iMenmbersService.autoUpgrade(moneys, serialBean.getSePhone());
        }
        return "success";
    }

}
