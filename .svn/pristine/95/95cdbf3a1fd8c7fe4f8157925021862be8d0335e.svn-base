package com.test.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.hotelsystem.bean.HotelDiscountBean;
import com.hotelsystem.dao.IHotelDiscountDao;
import com.hotelsystem.dao.IHotelOverTimeDao;
import com.hotelsystem.service.IOverTimeService;
import com.hotelsystem.service.impl.OverTimeServiceImpl;
import com.test.util.MybatisUtil;

public class HotelOverTimeTest {

	//查询收费规则
		@Test
		public void test1(){
			// 通过测试包里的工具包产生一个sqlsession对象
			SqlSession session = MybatisUtil.getSqlSession(true);
			try {
				// 通过session调用持久化方法
				IHotelOverTimeDao dao=session.getMapper(IHotelOverTimeDao.class);
				System.out.println(dao.findHotelOverTimeRule());
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		//查询收费规则
		@Test
		public void test2(){
			// 通过测试包里的工具包产生一个sqlsession对象
			SqlSession session = MybatisUtil.getSqlSession(true);
			try {
				// 通过session调用持久化方法
				IHotelOverTimeDao dao=session.getMapper(IHotelOverTimeDao.class);
				SimpleDateFormat df = new SimpleDateFormat("hh-mm-ss");
				String date=df.format(new Date());
				Date n=df.parse(date);
				System.out.println(dao.updateEndTime(n));
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		//测试OverTimeServiceImpl
		@Test
		public void test3(){
			OverTimeServiceImpl service=new OverTimeServiceImpl();
			// 通过测试包里的工具包产生一个sqlsession对象
			SqlSession session = MybatisUtil.getSqlSession(true);
			try {
				// 通过session调用持久化方法
				IHotelOverTimeDao dao=session.getMapper(IHotelOverTimeDao.class);
				service.setDao(dao);
				SimpleDateFormat df = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
				String a="2018:8:7 12:00:00";
				String b="2018:8:8 18:00:00";
				Date expectDate=df.parse(a);
				Date actualDate=df.parse(b);
				System.out.println(expectDate);
				System.out.println(actualDate);
				System.out.println(service.countOverTimeFee(expectDate, actualDate));
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
}
