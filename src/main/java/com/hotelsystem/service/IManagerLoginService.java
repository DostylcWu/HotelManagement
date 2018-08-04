package com.hotelsystem.service;

import java.util.List;

import com.hotelsystem.bean.ManagerLoginBean;

/**
 * @ClassNmae IManagerLoginService
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public interface IManagerLoginService {
	//添加管理员
	public Boolean addManager(ManagerLoginBean bean);
	//删除管理员
	public Boolean delManager(int id);
	//查看全部管理员
	public List<ManagerLoginBean> allManager();
	//通过名字查询管理员
	public ManagerLoginBean findNameByManager(String name);
	//登录
	public Boolean loginManager(ManagerLoginBean bean);
}
