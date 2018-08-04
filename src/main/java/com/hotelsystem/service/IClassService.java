package com.hotelsystem.service;

import com.hotelsystem.bean.ClassBean;

/**
 * @ClassNmae IClassService
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */

public interface IClassService {
	//修改折扣，
	public Boolean updateDiscount(ClassBean bean);
	//添加会员等级
	public Boolean addDiscount(ClassBean bean);
	//删除会员等级
	public Boolean delDiscount(int id);
}
