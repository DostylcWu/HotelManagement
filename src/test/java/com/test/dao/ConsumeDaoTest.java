package com.test.dao;

import com.hotelsystem.bean.ConsumeBean;
import com.hotelsystem.bean.HotelDiscountBean;
import com.hotelsystem.dao.IConsumeDao;
import com.hotelsystem.dao.IHotelDiscountDao;
import com.hotelsystem.dao.SerialDao;
import com.test.util.MybatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName ConsumeDaoTest
 * @Description TODO
 * @Author Wu Yimin
 * @Date 2018/8/7 下午3:18
 * @Version 1.0
 **/
public class ConsumeDaoTest {
    @Test
    public void test1(){
        SqlSession session = MybatisUtil.getSqlSession(true);
        try {
            IConsumeDao consumeDao=session.getMapper(IConsumeDao.class);
            ConsumeBean consumeBean=new ConsumeBean("201","101","哈哈",14,11.11,new Date(),1,"1001");
            consumeDao.insert(consumeBean);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    @Test
    public void test2(){
        SqlSession session = MybatisUtil.getSqlSession(true);
        try {
            IConsumeDao consumeDao=session.getMapper(IConsumeDao.class);
            consumeDao.updateConFlagByConId(0,"201");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    @Test
    public void test3() throws ParseException {
        SqlSession session=MybatisUtil.getSqlSession();
        SerialDao serialDao=session.getMapper(SerialDao.class);
        String a="2018-1-1 00:00:00";
        String b="2018-2-2 00:00:00";
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        serialDao.findBySTimeGreaterThanOrEqualToAndSTimeLessThanOrEqualTo(sdf.parse(a),sdf.parse(b));
    }
}