package com.hotelsystem.bean;

import java.util.List;

/**
 * @ClassNmae ManagerLoginBean
 * @author Weizhengyi
 * @Descrption TODO
 * @Date 2018/8/4
 * @version 1.0
 */
public class ManagerLoginBean {

	private int u_id;
	private String u_name;
	private String u_pwd;
	private int u_identity;
	private List<ManagerRecordBean> listmr;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public int getU_identity() {
		return u_identity;
	}
	public void setU_identity(int u_identity) {
		this.u_identity = u_identity;
	}
	public List<ManagerRecordBean> getListmr() {
		return listmr;
	}
	public void setListmr(List<ManagerRecordBean> listmr) {
		this.listmr = listmr;
	}
	
}
