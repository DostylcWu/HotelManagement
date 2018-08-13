package com.hotelsystem.service.impl.manager;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hotelsystem.bean.CheckInBean;
import com.hotelsystem.dao.ICheckInDao;
import com.hotelsystem.service.ICheckInService;
import org.n3r.idworker.Sid;
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
    public PageInfo queryAll(int pageNum) {
        //获取第1页2条内容
        PageHelper.startPage(pageNum,2);
        //接着的方法会被分页
        List<CheckInBean> checkInBeans=checkInDao.findAllCheckIn();
        //page里面包含了分页的信息
        PageInfo page = new PageInfo(checkInBeans);
        return page;
    }

    /**
     * 查询id入住信息
     *
     * @param id
     */
    @Override
    public CheckInBean queryById(String id) {
        CheckInBean checkInBean=checkInDao.findById(id);
        return checkInBean;
    }
}