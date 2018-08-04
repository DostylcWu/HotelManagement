package com.hotelsystem.service;

import java.util.List;

import com.hotelsystem.bean.ManagerRecordBean;

/**
 * @ClassNmae IManagerRecordService
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public interface IManagerRecordService {
	//显示所有工作日志
	public List<ManagerRecordBean> displayWorkLog();
	//记录上班时间并返回当前id
	public int punchIn();
	//记录下班时间 
	public void punchOut();

}
