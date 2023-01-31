package com.weed.wws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.weed.mapper.WwsMapper;

@Controller
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;
	
	@PostMapping(value = "/imgSave.do")
	public String imgSave() {
		System.out.println("이미지 저장 컨트롤러");
		
		return "test";
	}
}
