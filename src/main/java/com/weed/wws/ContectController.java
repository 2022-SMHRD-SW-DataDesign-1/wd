package com.weed.wws;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	// 의뢰서 작성
	@PostMapping(value = "/contectInsert.do")
	public String contectInsert(WeedDTO dto) {
		wwsMapper.insertContect(dto);
		return "redirect:/index.do";
	}

}
