package com.hotelsystem.dao;

import com.hotelsystem.bean.RoomTypeBean;

/**
 * 房间类型Dao
 * @ClassName IRoomTypeDao
 * @Description XXX
 * @author Ren Qiang
 * @Date 2018/8/4 上午10:27
 * @version 1.0
 */
public interface IRoomTypeDao {
	/**
	 * 根据房间类型id对其进行更新，返回受影响行数
	 * @MethodName updateRoomTypeById
	 * @Description TODO
	 * @author Ren Qiang
	 * @Date 2018/8/4 上午10:27
	 * @version 1.0
	 * @param typeId 类型ID
	 * @param bean 房间类型Bean
	 * @return 返回影响行数
	 */
	public int updateRoomTypeById(int typeId,RoomTypeBean bean);
	/**
	 * 添加房间类型，返回受影响行数
	 * @MethodName insertRoomType
	 * @Description TODO
	 * @author Ren Qiang
	 * @Date 2018/8/4 上午10:30
	 * @version 1.0
	 * @param bean 房间类型Bean
	 * @return 返回影响行数
	 */
	public int insertRoomType(RoomTypeBean bean);
	/**
	 * 根据id删除房间类型，返回受影响行数
	 * @MethodName deleteRoomType
	 * @Description TODO
	 * @author Ren Qiang
	 * @Date 2018/8/4 上午10:32
	 * @version 1.0
	 * @param typeId 房间类型ID
	 * @return 返回受影响行数
	 */
    public int deleteRoomType(int typeId);
}
