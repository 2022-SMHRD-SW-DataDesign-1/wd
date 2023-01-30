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
public class ContactController {

	@Autowired
	private WwsMapper wwsMapper;

	// 의뢰서 작성
	@PostMapping(value = "/contactInsert.do")
	public String contactInsert(WeedDTO dto) {
		System.out.println("의뢰서 컨트롤러");
		wwsMapper.insertContact(dto);
		System.out.println("의뢰서작성 성공");
		return "index";

	}

	// 의뢰서 조회
	@RequestMapping(value = "/.do")
	public String contactList(Model model) {
		List<WeedDTO> list = wwsMapper.getContact();
		model.addAttribute("list", list);
		return "";
	}
}
