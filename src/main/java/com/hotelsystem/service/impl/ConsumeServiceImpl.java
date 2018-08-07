package com.hotelsystem.service.impl;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.hotelsystem.bean.ConsumeBean;
import com.hotelsystem.dao.IConsumeDao;
import com.hotelsystem.service.IConsumeService;

@Service
public class ConsumeServiceImpl implements IConsumeService{

    @Resource
    private IConsumeDao iConsumeDao;

    @Override
    public int insert(ConsumeBean consumeBean){
        return iConsumeDao.insert(consumeBean);
    }

    @Override
    public int insertSelective(ConsumeBean consumeBean){
        return iConsumeDao.insertSelective(consumeBean);
    }

    @Override
    public int insertList(List<ConsumeBean> consumeBeans){
        return iConsumeDao.insertList(consumeBeans);
    }

    @Override
    public int update(ConsumeBean consumeBean){
        return iConsumeDao.update(consumeBean);
    }
}
