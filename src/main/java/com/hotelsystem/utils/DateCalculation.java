
package com.hotelsystem.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @ClassName DateCalculation
 * @Description TODO:日期计算
 * @Author Li Gen
 * @Date 2018年8月10日 上午10:43:11
 * @Version 1.0
 **/
public class DateCalculation {
	// 计算两个日期之间的天数
	public static int differenceValue(Date date1, Date date2) {

		int days = (int) ((date1.getTime() - date2.getTime()) / 86400000);

		return days;
	}

	// 计算几天过后的日期
	public static Date getNewDate(Date date, int days) throws ParseException {
		Calendar cal = Calendar.getInstance();
		Calendar cal2 = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, days);
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		cal2.set(Calendar.YEAR, year);
		cal2.set(Calendar.MONTH, month - 1);
		cal2.set(Calendar.DAY_OF_MONTH, day);
		cal2.set(Calendar.HOUR, 12);
		cal2.set(Calendar.MINUTE, 00);
		cal2.set(Calendar.SECOND, 00);
		return cal2.getTime();
	}
}