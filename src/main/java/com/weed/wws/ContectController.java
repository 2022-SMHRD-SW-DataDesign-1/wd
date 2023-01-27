package com.weed.wws;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.weed.entity.WeedDTO;
import com.weed.mapper.WwsMapper;

@Controller
public class ContectController {
	
	@Autowired
	private WwsMapper wwsMapper;
	
	@RequestMapping(value = "/.do")
	public String contectList(Model model) {
		List<WeedDTO> list = wwsMapper.getContect();
		model.addAttribute("list", list);
		return "";
	}
	
	//비동기방식을 써야할지도
	@PostMapping(value = "/.do")
	public String contectInsert(WeedDTO dto) {
		wwsMapper.insertContect(dto);
		return "redirect:/.do";
	}

}
