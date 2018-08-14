package com.hotelsystem.action.manager.reserve;

import com.github.pagehelper.PageInfo;
import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.bean.HotelDiscountBean;
import com.hotelsystem.bean.MenmbersBean;
import com.hotelsystem.service.ICheckInService;
import com.hotelsystem.service.manager.IHotelDiscountService;
import com.hotelsystem.service.manager.IMenmbersService;
import com.hotelsystem.service.manager.IOverTimeService;

import org.springframework.beans.factory.annotation.Autowired;
import com.hotelsystem.utils.AesEncodeTUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
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
    @Autowired
    private IHotelDiscountService hotelDiscountService;
    @Autowired
    private IMenmbersService iMenmbersService;

    /**
     * json传递
     *
     * @return
     */
    @RequestMapping("/CheckInList.action")
    public @ResponseBody
    PageInfo CheckInList(@RequestParam Integer currentPage) {
        int i = overTimeService.countOverTime(new Date(), new Date());
        PageInfo page = checkInService.queryAll(currentPage);

        return page;
    }

    /**
     * 查询详细的入住信息
     */
    @RequestMapping("/CheckDetail.action")
    public ModelAndView checkDetail(@RequestParam String cid) {
        ModelAndView modelAndView = new ModelAndView();
        CheckInBean checkInBean = checkInService.queryById(cid);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String a = df.format(checkInBean.getLeaveTime());
        Date expectDate = null;
        try {
            expectDate = df.parse(a);
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        //
        double money = oservice.countOverTimeFee(checkInBean.getLeaveTime(), new Date(), checkInBean.getRoom().getRoomType().getName(), 1);
        System.out.println(checkInBean.getLeaveTime());
        int overTime = oservice.countOverTime(expectDate, new Date());
        overTime = overTime / 2 + 1;
        HotelDiscountBean hotelDiscountBean = hotelDiscountService.findDiscountByDate();
        money = checkInService.judgeMoeny(overTime, money, checkInBean, hotelDiscountBean);
        Map<String, Object> map = new HashMap<>();
        map.put("checkInBean", checkInBean);
        map.put("overTime", overTime);
        map.put("money", money);
        map.put("hotel", hotelDiscountBean);
        modelAndView.addObject("maps", map);
        modelAndView.setViewName("/html/checkInDetail.jsp");
        return modelAndView;
    }

    /**
     * 查询会员折扣
     */
    @RequestMapping("/VipCheck.action")
    public @ResponseBody
    Map<String, Object> vipCheck(@RequestParam String moneys, String phone) {
        String money = "";
        String res = "";
        double memberCount = 1;
        double vipLeve = 0;
        try {
            money = (AesEncodeTUtil.decryptAES(moneys)).trim();

        } catch (Exception e) {
            e.printStackTrace();
        }
        MenmbersBean menmbersBean = iMenmbersService.checkIdByMenmbers(phone);
        vipLeve = checkInService.findLev(menmbersBean);
        System.out.println("vipLeve" + vipLeve);
        money = checkInService.judgePaidMoney(menmbersBean, money, vipLeve);
        res = checkInService.judgeRes(menmbersBean);
        Map<String, Object> maps = new HashMap<>();
        maps.put("money", money);
        maps.put("res", res);
        maps.put("memberCount", memberCount);
        maps.put("vipLeve", vipLeve);
        return maps;
    }


}
