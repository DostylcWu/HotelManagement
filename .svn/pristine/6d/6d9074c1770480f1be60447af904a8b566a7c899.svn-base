package com.hotelsystem.dao;

import java.util.List;

import com.hotelsystem.bean.CheckInPersonBean;

/**
 * 入住人员
 * @ClassName: ICheckInPersonDao 
 * @Description: TODO
 * @author jhz
 * @date 2018年8月4日 下午2:31:12 
 * @version v1.0
 */
public interface ICheckInPersonDao {
	/**
	 * 插入入住人员信息
	 * @Title: insert 
	 * @Description: TODO
	 * @param bean
	 * @return void
	 * @throws
	 */
	public void insert(CheckInPersonBean bean);
	/**
	 * 更新入住人员信息
	 * @Title: update 
	 * @Description: TODO
	 * @param bean
	 * @return void
	 * @throws
	 */
	public void update(CheckInPersonBean bean);
	/**
	 * 删除入住人员信息
	 * @Title: delete 
	 * @Description: TODO
	 * @param bean
	 * @return void
	 * @throws
	 */
	public void delete(CheckInPersonBean bean);
	/**
	 * 通过预订订单ID查询到对应的入住人
	 * @Title: selectPersons 
	 * @Description: TODO
	 * @param reserveRoomId
	 * @return List<CheckInPersonBean>
	 * @throws
	 */
	public List<CheckInPersonBean> selectPersons(int reserveRoomId);
}
