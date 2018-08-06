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
	public String insertComment(CommentBean comment) {
		// 受影响行数
		int count = 0;
		//插入结果
		String result = "评论失败";
		// 产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			count = session.insert("com.hotelsystem.bean.insertComment", comment);
			System.out.println("受影响行数为："+ count);
			if(count != 0) {
				result = "评论成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public String deleteComment(CommentBean comment) {
		// 受影响行数
		int count = 0;
		//插入结果
		String result = "删除失败";
		// 产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			count = session.insert("com.hotelsystem.bean.deleteComment", comment);
			System.out.println("受影响行数为："+ count);
			if(count != 0) {
				result = "评论成功";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

}
