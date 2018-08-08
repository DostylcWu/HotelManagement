package com.hotelsystem.bean;

import java.util.Date;
/**
 * @ClassNmae ManagerRecordBean
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public class ManagerRecordBean {
	
	private int mrId;
	private Date mrOnTime;
	private Date mrOffTime;
	private ManagerLoginBean mlb;
	public int getMrId() {
		return mrId;
	}

	public void setMrId(int mrId) {
		this.mrId = mrId;
	}

	public Date getMrOnTime() {
		return mrOnTime;
	}

	public void setMrOnTime(Date mrOnTime) {
		this.mrOnTime = mrOnTime;
	}

	public Date getMrOffTime() {
		return mrOffTime;
	}

	public void setMrOffTime(Date mrOffTime) {
		this.mrOffTime = mrOffTime;
	}
	
	public ManagerLoginBean getMlb() {
		return mlb;
	}

	public void setMlb(ManagerLoginBean mlb) {
		this.mlb = mlb;
	}

	@Override
	public String toString() {
		return "ManagerRecordBean [mrId=" + mrId + ", mrOnTime=" + mrOnTime + ", mrOffTime=" + mrOffTime + "]";
	}
	
}
