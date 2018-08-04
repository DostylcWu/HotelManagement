package com.hotelsystem.dao;

import java.util.Date;

import com.hotelsystem.bean.HotelDiscountBean;
/**
 * 全场折扣Dao
 * @author Administrator
 *
 */
public interface IHotelDiscountDao {
	/**
	 * 查询当天是否有全场折扣,如有折扣则返回折扣Bean，如无则返回null
	 * @param nowadays
	 * @return
	 */
	public HotelDiscountBean findDiscountByDate(Date nowadays);
	/**
	 * 通过id修改全场折扣信息，返回受影响行数
	 * @param newDiscountBean
	 * @param id
	 * @return
	 */
	public int updateDiscount(HotelDiscountBean newDiscountBean,int id );
	/**
	 * 添加新的全场折扣，返回受影响行数
	 * @param newDiscountBean
	 * @return
	 */
	public int addDiscount(HotelDiscountBean newDiscountBean);
	/**
	 * 通过id删除该id对应的全场折扣，返回受影响行数
	 * @param id
	 * @return
	 */
	public int deleteDiscountById(int id);

}
