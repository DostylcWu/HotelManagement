package com.hotelsystem.service;

import java.util.List;

import com.hotelsystem.bean.MenmbersBean;

/**
 * @ClassNmae IMenmbersService
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public interface IMenmbersService {
	//添加会员
	public Boolean addMenmbers(MenmbersBean bean);
	//删除会员
	public Boolean delMenmbers(int id);
	//管理员提升会员等级
	public Boolean upgrade(int id);
	//根据消费金额自动提升管理员等级
	public void autoUpgrade(double consume);
	//查看所有会员
	public List<MenmbersBean> checkAllMenmbers();
	//根据id查看会员
	public MenmbersBean checkIdByMenmbers();
}
