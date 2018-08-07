package com.hotelsystem.service.user.showtype.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import com.hotelsystem.bean.LevelDiscountBean;
import com.hotelsystem.bean.RoomInfoBean;
import com.hotelsystem.bean.RoomTypeBean;
import com.hotelsystem.dao.ILevelDiscountDao;
import com.hotelsystem.dao.IRoomInfoDao;
import com.hotelsystem.dao.IRoomTypeDao;
import com.hotelsystem.service.user.showtype.IRoomTypeService;
import com.hotelsystem.utils.MybatisUtil;

public class RoomTypeServiceImpl implements IRoomTypeService {

	@Override
	public List<RoomTypeBean> getRoomType() {
		// 获取所有的房间类型
		List<RoomTypeBean> roomTypeList = new ArrayList<RoomTypeBean>();
		SqlSession session = MybatisUtil.getSqlSession(true);
		IRoomTypeDao dao = session.getMapper(IRoomTypeDao.class);;
		roomTypeList = dao.findRoomType();
		return roomTypeList;
	}

	@Override
	public Map<String, Double> getPriceMap(RoomTypeBean roomType) {
		// 去数据库中查询所有的会员折扣
		List<LevelDiscountBean> levelList = new ArrayList<LevelDiscountBean>();
		SqlSession session = MybatisUtil.getSqlSession(true);
		ILevelDiscountDao dao = session.getMapper(ILevelDiscountDao.class);
		
		// 获取所有会员折扣，现在没有实现
		//levelList = dao.getAllDiscount();
		
		//非会员价格
		double oldPrice = roomType.getPrice();
		Map<String, Double> priceMap = new HashMap<String, Double>();
		
		// 将非会员价格放入放入到map中
		priceMap.put("非会员", oldPrice);
		for(int i = 0; i < levelList.size(); i++) {
		
			// 将各种等级的会员折扣价放入到map中
			double price = oldPrice * levelList.get(i).getClassDiscount();
			priceMap.put(levelList.get(i).getClassName(), price);
		}
		return null;
	}

	@Override
	public int availableRoomNumber(RoomTypeBean roomType, Date date) {
		// 可用房间的数量，现在只做查询今日的
		SqlSession session = MybatisUtil.getSqlSession(true);
		// 查询房间信息
		IRoomInfoDao dao = session.getMapper(IRoomInfoDao.class);
		int count = 0;
		count = dao.findAllRoomInfoCountByType(roomType.getId());
		return count;
	}
	
}
