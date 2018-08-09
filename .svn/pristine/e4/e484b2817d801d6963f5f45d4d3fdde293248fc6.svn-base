package com.hotelsystem.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.hotelsystem.bean.SerialBean;
import com.hotelsystem.dao.SerialDao;
import com.hotelsystem.service.SerialService;

@Service
public class SerialServiceImpl implements SerialService {

    @Resource
    private SerialDao serialDao;

    @Override
    public int insert(SerialBean serialBean){
        return serialDao.insert(serialBean);
    }

    @Override
    public int insertSelective(SerialBean serialBean){
        return serialDao.insertSelective(serialBean);
    }

    @Override
    public int insertList(List<SerialBean> serialBeans){
        return serialDao.insertList(serialBeans);
    }

    @Override
    public int update(SerialBean serialBean){
        return serialDao.update(serialBean);
    }
}
