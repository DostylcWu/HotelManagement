package com.hotelsystem.bean;

/**
 * 入住的人的信息
 * 
 * 入住人编号，入住人姓名，预订的订单编号
 * @author 籍慧中
 *
 */
public class CheckInPersonBean {
	private int id;
	private String name;
	private ReserveRoomBean reserveRoomId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ReserveRoomBean getReserveRoomId() {
		return reserveRoomId;
	}

	public void setReserveRoomId(ReserveRoomBean reserveRoomId) {
		this.reserveRoomId = reserveRoomId;
	}

}
