package com.hotelsystem.bean;
/**
 * 
 * @author Administrator
 *
 */
public class MenmbersBean {

	private int mId;
	private String mName;
	private double mConsume;
	public LevelDiscountBean lb;

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public double getmConsume() {
		return mConsume;
	}

	public void setmConsume(double mConsume) {
		this.mConsume = mConsume;
	}

	public LevelDiscountBean getLb() {
		return lb;
	}

	public void setLb(LevelDiscountBean lb) {
		this.lb = lb;
	}
}
