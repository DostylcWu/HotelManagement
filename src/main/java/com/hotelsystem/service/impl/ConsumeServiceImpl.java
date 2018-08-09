package com.hotelsystem.service.impl;

import com.hotelsystem.bean.CheckInBean;
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

    /**
     * @param cid
     * @return
     */
    @Override
    public List<CheckInBean> listCheckIn(String[] cid) {
        return null;
    }
}
