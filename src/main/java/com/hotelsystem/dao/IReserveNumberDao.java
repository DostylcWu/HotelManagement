package com.hotelsystem.dao;

import java.util.List;

import com.hotelsystem.bean.ReserveNumberBean;

/**
 * 预定数量表
 * @ClassName: IReserveNumberDao 
 * @Description: TODO
 * @author jhz
 * @date 2018年8月4日 下午2:31:33 
 * @version v1.0
 */
public interface IReserveNumberDao {
	/**
	 * 插入订单中预订的房间数量
	 * @Title: insert 
	 * @Description: TODO
	 * @param @param bean
	 * @return void
	 * @throws
	 */
	public void insert(ReserveNumberBean bean);
	/**
	 * 更新数量表
	 * @Title: update 
	 * @Description: TODO
	 * @param @param bean
	 * @return void
	 * @throws
	 */
	public void update(ReserveNumberBean bean);
	/**
	 * 删除数量表字段
	 * @Title: delete 
	 * @Description: TODO
	 * @param @param bean
	 * @return void
	 * @throws
	 */
	public void delete(ReserveNumberBean bean);
	/**
	 * 通过预订编号查询预订房间的数量以及类型
	 * @Title: selectById 
	 * @Description: TODO
	 * @param @param reserveRoomId
	 * @param @return
	 * @return List<ReserveNumberBean>
	 * @throws
	 */
	public List<ReserveNumberBean> selectById(String reserveRoomId);
}
