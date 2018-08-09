package com.hotelsystem.service;

import java.util.List;

import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.bean.ConsumeBean;
public interface IConsumeService{
    /**
     *
     * @param cid
     * @return
     */
    List<CheckInBean> listCheckIn(String [] cid);
}
