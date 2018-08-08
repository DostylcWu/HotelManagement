package com.hotelsystem.bean;

import java.util.Date;

/**
 * @ClassName SerialBean
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/8 上午10:47
 * @Version 1.0
 **/
public class SerialBean {
    private String sId;
    private Integer sAmount;
    private Date sTime;
    private Integer sFlag;

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public Integer getsAmount() {
        return sAmount;
    }

    public void setsAmount(Integer sAmount) {
        this.sAmount = sAmount;
    }

    public Date getsTime() {
        return sTime;
    }

    public void setsTime(Date sTime) {
        this.sTime = sTime;
    }

    public Integer getsFlag() {
        return sFlag;
    }

    public void setsFlag(Integer sFlag) {
        this.sFlag = sFlag;
    }
}
