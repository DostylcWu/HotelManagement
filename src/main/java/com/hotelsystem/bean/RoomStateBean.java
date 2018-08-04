package com.hotelsystem.bean;
/**
 * 房间状态表
 * @author Administrator
 *
 */
public class RoomStateBean {
 
	private int id;
	private String name;
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
	public RoomStateBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "RoomStateBean [id=" + id + ", name=" + name + "]";
	}
	

}
