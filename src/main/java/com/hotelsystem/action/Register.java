package com.hotelsystem.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aliyuncs.exceptions.ClientException;
import com.hotelsystem.utils.SendMessageCode;

/**
 * 
 * @ClassName: Register 
 * @Description: TODO
 * @author jhz
 * @date 2018年8月4日 下午12:10:04 
 * @version v1.0
 */
@Controller
public class Register {
	@RequestMapping(name="register.action")
	public @ResponseBody String register(@RequestParam String phoneNumber){
		System.out.println("手机号:"+phoneNumber);
		try {
			String code = SendMessageCode.sendCode(phoneNumber);
			System.out.println("消息码:"+code);
		} catch (ClientException e) {
			e.printStackTrace();
		}
		
		
		return "1234";
		
		
	}
}
