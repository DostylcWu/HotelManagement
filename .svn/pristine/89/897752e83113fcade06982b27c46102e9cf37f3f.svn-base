package com.test.dao;

import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hotelsystem.bean.HotelDiscountBean;
import com.hotelsystem.dao.IHotelDiscountDao;
import com.test.util.MybatisUtil;

public class HotelDiscountTest {
    //添加全场折扣测试
	@Test
	public void test1(){
		// 通过测试包里的工具包产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			IHotelDiscountDao dao=session.getMapper(IHotelDiscountDao.class);
			HotelDiscountBean bean=new HotelDiscountBean();
			bean.setStartTime(new Date());
			bean.setEndTime(new Date());
			bean.setValue(0.5);
			dao.addDiscount(bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
    //根据id软删除全场折扣测试
	@Test
	public void test2(){
		// 通过测试包里的工具包产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			IHotelDiscountDao dao=session.getMapper(IHotelDiscountDao.class);
			dao.deleteDiscountById(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
    //根据当前日期查看是否有全场折扣
	@Test
	public void test3(){
		// 通过测试包里的工具包产生一个sqlsession对象
		SqlSession session = MybatisUtil.getSqlSession(true);
		try {
			// 通过session调用持久化方法
			IHotelDiscountDao dao=session.getMapper(IHotelDiscountDao.class);
			System.out.println(dao.findDiscountByDate(new Date()));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}


}
