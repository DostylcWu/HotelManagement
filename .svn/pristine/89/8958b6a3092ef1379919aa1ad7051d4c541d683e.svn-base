package com.hotelsystem.service.manager.impl;


import java.util.List;

import org.springframework.stereotype.Service;
import com.hotelsystem.bean.LevelDiscountBean;
import com.hotelsystem.dao.ILevelDiscountDao;
import com.hotelsystem.service.manager.ILevelDiscountService;

@Service
public class ILevelDiscountServiceImpl implements ILevelDiscountService {

	private ILevelDiscountDao dao;

	public void setDao(ILevelDiscountDao dao) {
		this.dao = dao;
	}
	@Override
	public String updateDiscount(LevelDiscountBean bean) {
		String result="更新失败";
		if(bean!=null){
			//获取当前id
			int cid=bean.getClassId();
			//获取当前打折系数
			double discount=bean.getClassDiscount();
			//查询前一个会员等级信息
			LevelDiscountBean bean1 =dao.checkIdByLevelDiscount(cid-1);
			//查询后一个会员等级信息
			LevelDiscountBean bean2 =dao.checkIdByLevelDiscount(cid+1);
			if(discount<=0&&discount>1&&discount<bean1.getClassDiscount()&&discount>bean2.getClassDiscount()){
				result="打折信息错误";
				return result;
			}
//			if(bean1.getClassConsume()>bean.getClassConsume()&&bean.getClassConsume()>bean2.getClassConsume()){
//				result="最低消费金额错误";
//				return result;
//			}
			int re=dao.updateLevelDiscount(bean);
			if(re==1){
				result="更新成功";
				
			}
		}else{
			result="请输入";
		}
		return result;
	}

	@Override
	public String addDiscount(LevelDiscountBean bean) {
		String result="添加失败";
		if(bean!=null){
			int cid=bean.getClassId();
			
			double discount=bean.getClassDiscount();
			LevelDiscountBean bean1 =dao.checkIdByLevelDiscount(cid-1);
			if(discount<=0&&discount>1&&discount<bean1.getClassDiscount()){
				result="打折信息错误";
				return result;
			}
			if(bean1.getClassConsume()>bean.getClassConsume()){
				result="最低消费金额错误";
				return result;
			}
			int re=dao.addLevelDiscount(bean);
			if(re==1){
				result="更新成功";
			}
		}else {
			result="请输入";
		}
		
		return result;
	}

	@Override
	public String delDiscount(int id) {
		String result="删除失败";
		int re=dao.delLevelDiscount(id);
		if(re==1){
			result="删除成功";
		}
		return result;
	}

	@Override
	public List<LevelDiscountBean> checkAllDiscount() {
		return dao.checkLevelDiscount();
	}

	@Override
	public LevelDiscountBean checkIdByDiscount(int id) {
		return dao.checkIdByLevelDiscount(id);
	}

}
