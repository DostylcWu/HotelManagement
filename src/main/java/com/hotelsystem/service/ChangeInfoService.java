package com.hotelsystem.service;

public interface ChangeInfoService {
	//修改密码
	public String changePass(String pass,String account);
	//换绑手机号
	public String changeAccount(String account,int id);
	//更换邮箱信息
	public String changeMail(String mail);
}
