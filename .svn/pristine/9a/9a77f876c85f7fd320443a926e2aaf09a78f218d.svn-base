package com.hotelsystem.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import com.hotelsystem.bean.RoomTypeBean;
import com.hotelsystem.dao.IRoomTypeDao;
import com.hotelsystem.utils.MybatisUtil;

public class RoomTypeDaoImpl implements IRoomTypeDao {

	@Override
	public int updateRoomTypeById(int typeId, RoomTypeBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertRoomType(RoomTypeBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRoomType(int typeId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RoomTypeBean> findRoomType() {
		List<RoomTypeBean> list = new ArrayList<RoomTypeBean>();

		// 产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			list = session.selectList("com.hotelsystem.bean.findAllRoomType", RoomTypeBean.class);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;

	}

}
