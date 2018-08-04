package com.hotelsystem.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aliyuncs.exceptions.ClientException;
import com.hotelsystem.common.SendMessageCode;

@Controller
public class Register {
	@RequestMapping(name="register.action")
	public @ResponseBody String register(@RequestParam String phoneNumber){
		System.out.println("�ֻ���:"+phoneNumber);
		try {
			String code = SendMessageCode.sendCode(phoneNumber);
			System.out.println("��Ϣ��:"+code);
		} catch (ClientException e) {
			e.printStackTrace();
		}
		
		
		return "1234";
		
		
	}
}
