package com.hotelsystem.service;

import com.hotelsystem.bean.UserInfoBean;
import com.hotelsystem.bean.UserLoginBean;

public interface LoginRegisterService {
	//用户账号登陆验证
	public String accountLogin(String account,String pass);
	//手机号登陆
	public String telLogin(String account,int code);
	//账户注册
	public String newUser(UserLoginBean bean1,UserInfoBean bean2);
}
