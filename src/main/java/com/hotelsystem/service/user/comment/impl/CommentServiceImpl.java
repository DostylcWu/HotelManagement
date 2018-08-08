package com.hotelsystem.service.user.comment.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;

import com.hotelsystem.bean.CommentBean;
import com.hotelsystem.bean.ManagerLoginBean;
import com.hotelsystem.bean.UserLoginBean;
import com.hotelsystem.dao.ICommentDao;
import com.hotelsystem.service.user.comment.ICommentService;
import com.hotelsystem.utils.MybatisUtil;

public class CommentServiceImpl implements ICommentService{

	@Override
	public List<CommentBean> getAllComment() {
		List<CommentBean> commentList = new ArrayList<CommentBean>();
		SqlSession session = MybatisUtil.getSqlSession(true);
		ICommentDao dao = session.getMapper(ICommentDao.class);;
		commentList = dao.findAllComment();
		System.out.println("在业务层中得到的所有评论：");
		System.out.println(commentList);
		return commentList;
	}

	@Override
	public String appendComment(UserLoginBean userLogin, CommentBean comment) {
		// 添加评论，需要住房之后才能添加评论，而且只能一条一条的添加评论
		// 先查询userLogin有没有，如果有就可以操作，如果没有就说评论失败，先登陆
		// 需要通过userLogin得到是否可以评论的信息，现在未实现
		String result = "评论失败";
		int count = 0;
		if(userLogin == null) {
			result = "请先登陆";
		}else {
			SqlSession session = MybatisUtil.getSqlSession(true);
			ICommentDao dao = session.getMapper(ICommentDao.class);
			count = dao.insertComment(comment);
			if(count != 0) {
				result = "评论成功";
			}
		}	
		return result;
	}

	@Override
	public String clearComment(ManagerLoginBean managerLoign,CommentBean comment) {
		// 管理员删除评论
		// 删除结果
		String result = "删除失败";
		int count = 0;
		if(managerLoign == null) {
			result = "管理员未登陆";
		}else {
			SqlSession session = MybatisUtil.getSqlSession(true);
			ICommentDao dao = session.getMapper(ICommentDao.class);
			count = dao.deleteComment(comment);
			if(count != 0) {
				result = "删除成功";
			}
		}
		return result;
	}

}
