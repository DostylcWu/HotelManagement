package com.hotelsystem.dao;

import com.hotelsystem.bean.RoomStateBean;

/**
 * 房间状态表Dao
 * @author Administrator
 *
 */
public interface IRoomStateDao {
	/**
	 * 根据id修改房间状态的名字，返回受影响行数
	 * @param stateId
	 * @param newRoomStateName
	 * @return
	 */
	public int uodateRoomStateById(int stateId,int newRoomStateName);
	/**
	 * 添加新的房间状态，返回受影响行数
	 * @param bean
	 * @return
	 */
	public int insertRoomState(RoomStateBean bean);
	/**
	 * 通过状态id删除该类型房间状态
	 * @param stateId
	 * @return
	 */
	public int deleteRoomState(int stateId);
}
