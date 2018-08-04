package com.hotelsystem.dao;

import com.hotelsystem.bean.UserInfoBean;
import com.hotelsystem.bean.UserLoginBean;

/**
 * 登陆注册Dao
 * @author lkt
 *
 */
public interface ILoginAndRegisterDao {
	/**
	 * 登陆时，查询账户的密码
	 * @param tel
	 * @return
	 */
	public String selectPass(String account);
	
	/**
	 * 注册，登陆表
	 * @param UserLoginBean.tel
	 * @param UserLoginBean.pass
	 * @return
	 */
	public String insertLogin(UserLoginBean bean);
	
	/**
	 * 注册，用户信息表
	 * @param UserInfoBean bean
	 * @return
	 */
	public String insertInfo(UserInfoBean bean);
	
	/**
	 * 通过用户账号（手机号）查询用户是否有评论权利
	 * @param UserLoginBean.tel
	 * @return
	 */
	public int UserComment(UserInfoBean bean);
}
