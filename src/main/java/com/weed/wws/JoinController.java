package com.weed.wws;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.weed.entity.WeedDTO;
import com.weed.mapper.JoinMapper;


@Controller
public class JoinController {

	@Autowired
	private JoinMapper joinMapper;
	
	@PostMapping(value = "/Join.do")
	public String JoinInsert(WeedDTO dto) {

		joinMapper.Join(dto);
		
		return "redirect:/index.do";
	}
	
	@PostMapping(value = "/Login.do")
	public String LoginSelect(WeedDTO dto) {

		joinMapper.Login(dto);
		
		return "redirect:/index.do";
	}
	
	@PostMapping(value = "/ManagerSelect.do")
	public String Manager(String managerkey) {
		
		if(managerkey.equals("weed123")) {
			return "redirect:/Manager.do";			
		}else {
			return "redirect:/index.do";
		}
		
	}
	
	
	
	
	
}
