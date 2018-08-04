package com.hotelsystem.dao.impl;

import java.util.List;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.hotelsystem.bean.CommentBean;
import com.hotelsystem.bean.ManagerLoginBean;
import com.hotelsystem.dao.ICommentDao;
import com.hotelsystem.utils.MybatisUtil;

/**
 * 评论dao实现类
 * 
 * @author 张加林
 * 
 */
public class CommentDaoImpl implements ICommentDao {

	@Override
	public void findAllComment() {
		// 一个评论列表
		List<CommentBean> list = new ArrayList<CommentBean>();
		// 产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			list = session.selectList("com.hotelsystem.bean.findAll", CommentBean.class);
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

	@Override
	public String addComment(CommentBean comment) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteComment(ManagerLoginBean managerLoign) {
		// TODO Auto-generated method stub
		return null;
	}

}
