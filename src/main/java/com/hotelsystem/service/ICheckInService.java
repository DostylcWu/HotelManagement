package com.hotelsystem.service;

import com.hotelsystem.bean.CheckInBean;

import java.util.List;
import java.util.Map;

/**
 * @ClassName ICheckInService
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/9 下午2:40
 * @Version 1.0
 **/
public interface ICheckInService {
    /**
     * 查询所有房间号
     * @return
     */
    Map<String,Object> queryAll();
}
