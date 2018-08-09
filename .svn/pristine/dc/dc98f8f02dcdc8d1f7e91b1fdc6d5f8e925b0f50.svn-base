package com.test.dao;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotelsystem.dao.ILevelDiscountDao;
import com.hotelsystem.dao.IManagerLoginDao;

import com.hotelsystem.service.manager.IManagerLoginService;
import com.hotelsystem.service.manager.impl.IManagerLoginServiceImpl;

public class ManagerLoginTest {

	private IManagerLoginServiceImpl service= new IManagerLoginServiceImpl();
	@Test
	public void test(){
		ApplicationContext context = new ClassPathXmlApplicationContext("config/applicationContext.xml");
		//获取bean
		IManagerLoginDao dao=context.getBean("IManagerLoginDao",IManagerLoginDao.class);
		service.setDao(dao);
		String name="";
		String pwd="";
		
		System.out.println(service.allManager());
	}
}
