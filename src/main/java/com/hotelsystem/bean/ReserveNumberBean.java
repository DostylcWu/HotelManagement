package com.hotelsystem.bean;

/**
 * 预定数量表实体
 * 
 * 预订房间数量 ,预订订单编号 ,预订房间类型编号
 * 
 * @author 籍慧中
 *
 */
public class ReserveNumberBean {
	private int count;
	private RoomTypeBean roomTypeId;
	private ReserveRoomBean reserveRoomId;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public RoomTypeBean getRoomTypeId() {
		return roomTypeId;
	}

	public void setRoomTypeId(RoomTypeBean roomTypeId) {
		this.roomTypeId = roomTypeId;
	}

	public ReserveRoomBean getReserveRoomId() {
		return reserveRoomId;
	}

	public void setReserveRoomId(ReserveRoomBean reserveRoomId) {
		this.reserveRoomId = reserveRoomId;
	}

}
