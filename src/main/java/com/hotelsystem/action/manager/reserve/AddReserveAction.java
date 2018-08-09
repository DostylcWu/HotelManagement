package com.hotelsystem.action.manager.reserve;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotelsystem.bean.CheckInPersonBean;
import com.hotelsystem.bean.ReserveNumberBean;
import com.hotelsystem.bean.ReservePeopleBean;
import com.hotelsystem.bean.ReserveRoomBean;
import com.hotelsystem.bean.RoomTypeBean;

@Controller
public class AddReserveAction {
	@RequestMapping(value="/managerAddReserve.action")
	public void addReserve(ReserveRoomBean reserveRoomBean,ReservePeopleBean reservePeopleBean,
			ReserveNumberBean reserveNumberBean,RoomTypeBean roomTypeBean){
				System.out.println("room:"+reserveRoomBean);
				System.out.println("people:"+reservePeopleBean);
				System.out.println("number:"+reserveNumberBean);
				System.out.println("roomTypeBean:"+roomTypeBean);
		
	}
	@RequestMapping(value="/managerAddCheckInPerson.action")
	public void addCheckInPerson(@RequestBody List<CheckInPersonBean> list){
		for (CheckInPersonBean checkInPersonBean : list) {
			System.out.println(checkInPersonBean);
		}
	}
	@RequestMapping(value="/managerAddReserveMsg.action")
	public void addReserveMsg(@RequestBody List<Map<String, Object>> list){
		for (Map<String, Object> map : list) {
			for(Map.Entry<String, Object> entry: map.entrySet()){
				System.out.println("key:"+entry.getKey()+"-----"+"value:"+entry.getValue());
			}
		}
	}
	
}
