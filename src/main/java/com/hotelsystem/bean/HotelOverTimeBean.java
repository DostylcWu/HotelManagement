package com.hotelsystem.bean;

import java.util.Date;

/**
 * 超时收费规则
 * @ClassName HotelOverTimeBean
 * @Description XXX
 * @author Ren Qiang
 * @Date 2018/8/4 上午9:22
 * @version 1.0
 */
public class HotelOverTimeBean {
	private int id;
	private Date overHalfDayStartTime;
	private Date overAllDayStartTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getOverHalfDayStartTime() {
		return overHalfDayStartTime;
	}
	public void setOverHalfDayStartTime(Date overHalfDayStartTime) {
		this.overHalfDayStartTime = overHalfDayStartTime;
	}
	public Date getOverAllDayStartTime() {
		return overAllDayStartTime;
	}
	public void setOverAllDayStartTime(Date overAllDayStartTime) {
		this.overAllDayStartTime = overAllDayStartTime;
	}
	@Override
	public String toString() {
		return "HotelOverTimeBean [id=" + id + ", overHalfDayStartTime=" + overHalfDayStartTime
				+ ", overAllDayStartTime=" + overAllDayStartTime + "]";
	}
    
   
	

}
