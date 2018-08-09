package com.hotelsystem.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hotelsystem.bean.CheckInPersonBean;

/**
 * 入住人员
 * @ClassName: ICheckInPersonDao 
 * @Description: TODO
 * @author jhz
 * @date 2018年8月4日 下午2:31:12 
 * @version v1.0
 */
@Repository
public interface ICheckInPersonDao {
	/**
	 * 插入入住人员信息
	 * @Title: insert 
	 * @Description: TODO
	 * @param bean
	 * @return int
	 * @throws
	 */
	public int insertCheckInPerson(CheckInPersonBean bean);
	/**
	 * 更新入住人员信息
	 * @Title: update 
	 * @Description: TODO
	 * @param bean
	 * @return int
	 * @throws
	 */
	public int updateCheckInPerson(CheckInPersonBean bean);
	/**
	 * 
	 * @Title: deleteCheckInPerson 
	 * @Description: TODO
	 * @param @param bean
	 * @param @return
	 * @return int
	 * @throws
	 */
	public int deleteCheckInPerson(CheckInPersonBean bean);
	/**
	 * 通过预订订单ID查询到对应的入住人
	 * @Title: selectPersons 
	 * @Description: TODO
	 * @param reserveRoomId
	 * @return List<CheckInPersonBean>
	 * @throws
	 */
	public List<CheckInPersonBean> findCheckInPersonByRoomId(String reserveRoomId);

	/**
	 * 
	* @Title: updateCheckInPersonByRoomId 
	* @Description: 通过房间预定id修改房间入住人
	* @param @param bean
	* @param @return    设定文件 
	* @return int    返回类型 
	* @throws
	 */
	public int updateCheckInPersonByRoomId(CheckInPersonBean bean);
	
	

}
