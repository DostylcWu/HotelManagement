package com.hotelsystem.service.impl.manager;

import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.dao.ICheckInDao;
import com.hotelsystem.service.ICheckInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName CheckInServiceImpl
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/9 下午2:40
 * @Version 1.0
 **/
@Service
public class CheckInServiceImpl implements ICheckInService {
    @Autowired
    private ICheckInDao checkInDao;
    /**
     * 查询所有房间号
     *
     * @return
     */
    @Override
    public List<CheckInBean> queryAll() {
        List<CheckInBean> checkInBeans=checkInDao.findAllCheckIn();
        return checkInBeans;
    }
}
