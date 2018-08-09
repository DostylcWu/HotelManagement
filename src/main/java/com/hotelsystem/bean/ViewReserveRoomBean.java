package com.hotelsystem.bean;

import java.util.Date;
import java.util.List;

/**
 * 房间预定信息视图
 * @author Administrator
 *
 */
public class ViewReserveRoomBean {
	/**
	 * 房间预定id
	 */
	private String id;
	/**
	 * 入住时间
	 */
	private Date checkIn;
	/**
	 * 退房时间
	 */
	private Date checkOut;
	/**
	 * 预计到达时间
	 */
	private Date arrive;
	/**
	 * 支付金额
	 */
	private double money;
	/**
	 * 预定状态
	 */
	private int state;
	/**
	 * 预订人姓名
	 */
	private String reservePeopleName;
	/**
	 * 预定房间数量
	 */
	private int roomCount;
	/**
	 * 预定房间类型
	 */
	private String roomType;
	/**
	 * 房间单价
	 */
	private double price;
	/**
	 * 入住人姓名
	 */
	private String checkInPeople;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public Date getArrive() {
		return arrive;
	}
	public void setArrive(Date arrive) {
		this.arrive = arrive;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getReservePeopleName() {
		return reservePeopleName;
	}
	public void setReservePeopleName(String reservePeopleName) {
		this.reservePeopleName = reservePeopleName;
	}
	public int getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCheckInPeople() {
		return checkInPeople;
	}
	public void setCheckInPeople(String checkInPeople) {
		this.checkInPeople = checkInPeople;
	}
	@Override
	public String toString() {
		return "ViewReserveRoomBean [id=" + id + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", arrive="
				+ arrive + ", money=" + money + ", state=" + state + ", reservePeopleName=" + reservePeopleName
				+ ", roomCount=" + roomCount + ", roomType=" + roomType + ", price=" + price + ", checkInPeople="
				+ checkInPeople + "]";
	}
	
}
