package com.hotelsystem.service.manager.impl;


import java.util.Date;
import java.util.List;

import com.hotelsystem.bean.LevelDiscountBean;
import com.hotelsystem.bean.ManagerLoginBean;
import com.hotelsystem.bean.ManagerRecordBean;
import com.hotelsystem.dao.IManagerLoginDao;
import com.hotelsystem.dao.IManagerRecordDao;
import com.hotelsystem.service.manager.IManagerRecordService;

public class IManagerRecordServiceImpl implements IManagerRecordService {
	private IManagerRecordDao dao;
	private IManagerLoginDao ldao;
	
	public IManagerLoginDao getLdao() {
		return ldao;
	}

	public void setLdao(IManagerLoginDao ldao) {
		this.ldao = ldao;
	}

	public IManagerRecordDao getDao() {
		return dao;
	}

	public void setDao(IManagerRecordDao dao) {
		this.dao = dao;
	}

	@Override
	public List<ManagerRecordBean> displayWorkLog() {
		
		return dao.findAll();
	}

	@Override
	public int punchIn(String name) {
		//获取当前登录管理员实体bean
		ManagerLoginBean bean= ldao.findNameByManager(name);
		//获取管理员工作日志实体bean
		ManagerRecordBean bean1=new ManagerRecordBean();
		//当用户登录时记录当前时间
		bean1.setMrOnTime(new Date());
		bean1.setMlb(bean);
		dao.addupManagerRecord(bean1);
		return bean1.getMrId();
	}

	@Override
	public void punchOut(int id) {
		//获取登录用户的工作日志实体bean
		ManagerRecordBean bean=dao.findIdbyManagerRecord(id);
		//当管理员注销时，更新下班时间
		bean.setMrOffTime(new Date());
		dao.addOffManagerRecord(bean);
	}

}
