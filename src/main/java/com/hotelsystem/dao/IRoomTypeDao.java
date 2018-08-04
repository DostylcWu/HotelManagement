package com.hotelsystem.dao;

import com.hotelsystem.bean.RoomTypeBean;

/**
 * 房间类型Dao
 * @author Administrator
 *
 */
public interface IRoomTypeDao {
	/**
	 * 根据房间类型id对其进行更新，返回受影响行数
	 * @param typeId
	 * @param bean
	 * @return
	 */
	public int updateRoomTypeById(int typeId,RoomTypeBean bean);
	/**
	 * 添加房间类型，返回受影响行数
	 * @param bean
	 * @return
	 */
	public int insertRoomType(RoomTypeBean bean);
	/**
	 * 根据id删除房间类型，返回受影响行数
	 * @param typeId
	 * @return
	 */
    public int deleteRoomType(int typeId);
}
