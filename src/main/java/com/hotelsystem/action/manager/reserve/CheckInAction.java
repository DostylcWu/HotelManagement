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
import java.util.regex.Matcher;
import java.util.regex.Pattern;


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
        //System.out.println(checkInBean.getArriveTime());
        //超出的房费
        String a=df.format(checkInBean.getLeaveTime());
        Date expectDate=null;
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
        System.out.println("ossssss"+overTime);
        overTime = overTime / 2 + 1;

        HotelDiscountBean hotelDiscountBean = hotelDiscountService.findDiscountByDate();
        if (overTime > 1) {
            money = money  - checkInBean.getPaidMoney()+checkInBean.getRoom().getRoomType().getPrice();
            if (hotelDiscountBean != null) {
                money = money * hotelDiscountBean.getValue();
            }
        } else {
            money = checkInBean.getRoom().getRoomType().getPrice();
        }
        money=money- checkInBean.getPledgeMoney();
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
        int vipLeve = 0;
        try {
            money = (AesEncodeTUtil.decryptAES(moneys));
            //System.out.println(money);

        } catch (Exception e) {
            e.printStackTrace();
        }
        MenmbersBean menmbersBean = iMenmbersService.checkIdByMenmbers(phone);
        if (menmbersBean != null) {
            System.out.println(isNumeric(money));
            if (isNumeric(money)) {
                memberCount = menmbersBean.getLb().getClassDiscount();
                money = String.valueOf((Double.parseDouble(money)) * memberCount);
                vipLeve = menmbersBean.getLb().getClassId();
                // res= iMenmbersService.autoUpgrade(money, phone);
            }

        } else {
            res = "输入的手机号没有会员优惠";
        }

        try {
            money = AesEncodeTUtil.encryptAES(String.valueOf(money));
        } catch (Exception e) {
            e.printStackTrace();
        }

        Map<String, Object> maps = new HashMap<>();
        maps.put("money", money);
        maps.put("res", res);
        maps.put("memberCount", memberCount);
        maps.put("vipLeve", vipLeve);
        return maps;
    }

    public boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("^(\\-?)\\d+(\\.\\d+)?$");
        Matcher isNum = pattern.matcher(str);
        if (!isNum.matches()) {
            return false;
        }
        return true;
    }
}
