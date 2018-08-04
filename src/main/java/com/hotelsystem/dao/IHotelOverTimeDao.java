package com.hotelsystem.dao;

import java.util.Date;

import com.hotelsystem.bean.HotelOverTimeBean;

/**
 * 超时计费Dao
 * @author Administrator
 *
 */
public interface IHotelOverTimeDao {
	/**
	 * 查询酒店的超时计费规则，返回HotelOverTimeBean
	 * @return
	 */
 public HotelOverTimeBean findHotelOverTimeRule();
 /**
  * 修改规定的退房时间
  * @param newEndTime
  * @return
  */
 public int updateEndTime(Date newEndTime);
}
