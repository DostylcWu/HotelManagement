package com.hotelsystem.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hotelsystem.bean.ReserveRoomBean;

/**
 * 房间预定表
 * @ClassName: IReserveRoomDao 
 * @Description: TODO
 * @author jhz
 * @date 2018年8月4日 下午2:36:24 
 * @version v1.0
 */
@Repository
public interface IReserveRoomDao {
	/**
	 * 
	 * @Title: insertReserveRoom 
	 * @Description: TODO
	 * @param @param bean
	 * @return int
	 * @throws
	 */
	public int insertReserveRoom(ReserveRoomBean bean);
	/**
	 * 
	 * @Title: updateReserveRoom 
	 * @Description: TODO
	 * @param @param bean
	 * @return int
	 * @throws
	 */
	public int updateReserveRoom(ReserveRoomBean bean);
	/**
	 * 
	 * @Title: deleteReserveRoom 
	 * @Description: TODO
	 * @param @param bean
	 * @return int
	 * @throws
	 */
	public int deleteReserveRoom(ReserveRoomBean bean);
	/**
	 * 
	 * @Title: findReserveRoomByPeopleId 
	 * @Description: TODO
	 * @param @param reservePeopleId
	 * @param @return
	 * @return List<ReserveRoomBean>
	 * @throws
	 */
	public List<ReserveRoomBean> findReserveRoomByPeopleId(int reservePeopleId);
	/**
	 * 
	 * @Title: findReserveRoomByRoomId 
	 * @Description: TODO
	 * @param @param reserveRoomId
	 * @param @return
	 * @return ReserveRoomBean
	 * @throws
	 */
	public ReserveRoomBean findReserveRoomByRoomId(String reserveRoomId);
	/**
	 * 
	 * @Title: findReserveCountByTypeId 
	 * @Description: TODO
	 * @param @param reserveRoomId
	 * @param @return
	 * @return ReserveRoomBean
	 * @throws
	 */
	public int findReserveCountByTypeName(@Param("typeName")String typeName, @Param("dateStart")String dateStart, @Param("dateEnd")String dateEnd);
	

	
}
