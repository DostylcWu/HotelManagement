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
	
	private int mr_id;
	private Date mr_ontime;
	private Date mr_offtime;
	public int getMr_id() {
		return mr_id;
	}
	public void setMr_id(int mr_id) {
		this.mr_id = mr_id;
	}
	public Date getMr_ontime() {
		return mr_ontime;
	}
	public void setMr_ontime(Date mr_ontime) {
		this.mr_ontime = mr_ontime;
	}
	public Date getMr_offtime() {
		return mr_offtime;
	}
	public void setMr_offtime(Date mr_offtime) {
		this.mr_offtime = mr_offtime;
	}
	
}
