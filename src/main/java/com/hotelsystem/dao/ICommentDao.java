package com.hotelsystem.dao;

import com.hotelsystem.bean.ManagerLoginBean;
import com.hotelsystem.bean.UserLoginBean;

/**
 * 房间评论Dao
 * @author 张加林
 *
 */

public interface ICommentDao {
	/**
	 * 得到评论，不涉及到具体的某个人
	 * @param newDiscountBean
	 * @return
	 */
	 void findAllComment() ;
	/**
	 * 通过具体的某个用户，添加评论，如果没有登陆，不能评论
	 * @param userLogin
	 * @param content
	 * @return
	 */
	 String addComment(UserLoginBean userLogin, String content);
	/**
	 * 管理员登陆之后可以删除评论
	 * @param managerLoign
	 * @return
	 */
	 String deleteComment(ManagerLoginBean managerLoign);
}
