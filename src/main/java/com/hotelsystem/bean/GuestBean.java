package com.hotelsystem.bean;

import java.util.Date;


/**
 * 宾客实体
 * wpy
 */
public class GuestBean {
	
	private int guestId;
	private String guestName;
	private String guestIden;
	private Date guestIn;
	private Date guestOut;
	private double guestMoney;//已交押金
	private double guestPay;//已付金额
	private RoomInfoBean room;
	public int getGuestId() {
		return guestId;
	}
	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getGuestIden() {
		return guestIden;
	}
	public void setGuestIden(String guestIden) {
		this.guestIden = guestIden;
	}
	public Date getGuestIn() {
		return guestIn;
	}
	public void setGuestIn(Date guestIn) {
		this.guestIn = guestIn;
	}
	public Date getGuestOut() {
		return guestOut;
	}
	public void setGuestOut(Date guestOut) {
		this.guestOut = guestOut;
	}
	public double getGuestMoney() {
		return guestMoney;
	}
	public void setGuestMoney(double guestMoney) {
		this.guestMoney = guestMoney;
	}
	public double getGuestPay() {
		return guestPay;
	}
	public void setGuestPay(double guestPay) {
		this.guestPay = guestPay;
	}
	public RoomInfoBean getRoom() {
		return room;
	}
	public void setRoom(RoomInfoBean room) {
		this.room = room;
	}
	@Override
	public String toString() {
		return "GuestBean [guestId=" + guestId + ", guestName=" + guestName
				+ ", guestIden=" + guestIden + ", guestIn=" + guestIn
				+ ", guestOut=" + guestOut + ", guestMoney=" + guestMoney
				+ ", guestPay=" + guestPay + ", room=" + room + "]";
	}
	
}
