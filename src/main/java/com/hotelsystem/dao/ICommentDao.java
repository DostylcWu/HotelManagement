package com.hotelsystem.dao;

import com.hotelsystem.bean.CommentBean;
import com.hotelsystem.bean.ManagerLoginBean;

/**
 * 房间评论dao
 * @author 张加林
 *
 */

public interface ICommentDao {
	/**
	 * 得到评论，不涉及到具体的某个人
	 * @param newDiscountBean
	 * @return
	 */
	public void findAllComment() ;
	/**
	 * 通过具体的某个用户，添加评论，如果没有登陆，不能评论
	 * @param comment
	 * @return
	 */
	public String addComment(CommentBean comment);
	/**
	 * 管理员登陆之后可以删除评论
	 * @param managerLoign
	 * @return
	 */
	public String deleteComment(ManagerLoginBean managerLoign);
	
}
