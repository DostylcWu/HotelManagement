package com.hotelsystem.bean;


import java.util.Date;
/**
 * 
  *@ClassName Customer
  *@Description TODO:顾客实体
  *@Author Li Gen
  *@Date 2018年8月4日 上午9:47:24
  *@Version 1.0
  *
 */
public class Customer {
	//顾客编号
	private int id;
	//顾客姓名
	private int name;
	//顾客身份证号码
	private int idNumber;
	//顾客房间号
	private int roomNumber;
	//顾客入住时间
	private Date arriveTime;
	//顾客最迟离开时间
	private Date leaveTime;
	//缴纳押金
	private double cashTledge;
	//缴纳房款
	private double paidMoney;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	public int getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(int idNumber) {
		this.idNumber = idNumber;
	}
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public Date getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(Date arriveTime) {
		this.arriveTime = arriveTime;
	}
	public Date getLeaveTime() {
		return leaveTime;
	}
	public void setLeaveTime(Date leaveTime) {
		this.leaveTime = leaveTime;
	}
	public double getCashTledge() {
		return cashTledge;
	}
	public void setCashTledge(double cashTledge) {
		this.cashTledge = cashTledge;
	}
	public double getPaidToney() {
		return paidMoney;
	}
	public void setPaidToney(double paidMoney) {
		this.paidMoney = paidMoney;
	}
	@Override
	public String toString() {
		return "id=" + id + ", name=" + name + ", idNumber="
				+ idNumber + ", roomNumber=" + roomNumber + ", arriveTime="
				+ arriveTime + ", leaveTime=" + leaveTime + ", cashTledge="
				+ cashTledge + ", paidMoney=" + paidMoney + "";
	}

	
}
