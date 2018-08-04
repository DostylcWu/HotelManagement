package com.hotelsystem.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hotelsystem.bean.GuestBean;

/**
 * 宾客表dao
 * wpy
 */
public interface IGuestDao {
	
	/**
	 * 添加宾客
	 */
	void addGuest();
	
	/**
	 * 按id查找
	 * @param id
	 * @return
	 */
	GuestBean findGuestById(int id);
	
	/**
	 * 按名字查找
	 * 名字可能重名所以list接收
	 * @param name
	 * @return
	 */
	List<GuestBean> findGuestByName(String name);
	
	/**
	 * 按身份证号查询
	 * @param 身份证号
	 * @return
	 */
	GuestBean findGuestByIden(String iden);
	/**
	 * 查询所有入住宾客
	 * @return
	 */
	List<GuestBean> findAll();
}
