package com.hotelsystem.service.user.showtype;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.hotelsystem.bean.RoomTypeBean;

/**
 * @ClassNmae IClassService
 * @author ZhangJiaLin
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public interface IRoomTypeService {
	
	// 得到的所有的房间类型
	public List<RoomTypeBean> getRoomType();
	
	// 得到该某一房间类型，非会员，会员的价位
	public Map<String, Double> getPriceMap(RoomTypeBean roomType);
	
	// 得到某一日期，某一类型房间还剩多少间房间
	public int availableRoomNumber(RoomTypeBean roomType, Date date);
}
