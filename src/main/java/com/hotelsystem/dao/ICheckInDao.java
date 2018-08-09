package com.hotelsystem.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hotelsystem.bean.CheckInBean;

public interface ICheckInDao {
	List<CheckInBean> findAllCheckIn();
	/**
	 *	找到某一段时间类已经入住房间类型的数量，按类型记数
 	 */
	int findCheckInCountByTypeName(@Param("typeName")String typeName, @Param("dateStart")String dateStart, @Param("dateEnd")String dateEnd);

	/**
	 *
	 */
	CheckInBean findById(@Param("ci_id")String ci_id);


}
