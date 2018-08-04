package com.hotelsystem.bean;
/**
 * 
* <p>Title: ReserveCheckInPersonInfoBean</p>
* <p>Description: 预定入住人信息实体类</p>
* <p>Company: 蜗牛学院</p> 
* @author linweichao
* @date 上午10:29:26
 */
public class ReserveCheckInPersonInfoBean {
	
	private int cp_id;
	private String cp_name;
	private ReserveRoomBean reserveRoom;
	public int getCp_id() {
		return cp_id;
	}
	public void setCp_id(int cp_id) {
		this.cp_id = cp_id;
	}
	public String getCp_name() {
		return cp_name;
	}
	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}
	public ReserveRoomBean getReserveRoom() {
		return reserveRoom;
	}
	public void setReserveRoom(ReserveRoomBean reserveRoom) {
		this.reserveRoom = reserveRoom;
	}
	
	
	

}
