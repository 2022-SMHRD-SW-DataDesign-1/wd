package com.weed.wws;

import java.lang.reflect.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.weed.entity.WeedDTO;
import com.weed.mapper.JoinMapper;

@Controller
public class JoinController {

	@Autowired
	private JoinMapper joinMapper;

	@PostMapping(value = "/Join.do")
	public String JoinInsert(WeedDTO dto) {
		System.out.println("ttttt");
		System.out.println(dto.getEmail());
		System.out.println(dto.getCompany());
		System.out.println(dto.getPassword());
		joinMapper.Join(dto);
		return "index";
	}

	// 로그인 

	@PostMapping(value = "/Login.do")
	public String LoginSelect(WeedDTO dto, HttpSession session) {

		System.out.println("cccc");
		System.out.print(dto.getEmail());
		WeedDTO member = joinMapper.Login(dto);
		if (member == null) {
			return "redirect:/main.do";
		} else {
			session.setAttribute("member", member);
			System.out.println("성공");
			return "redirect:/index.do";

		}
//|| !member.equals(dto.getEmail()) && !member.equals(dto.getPassword()) 
	}

	// 관리자모드
	@PostMapping(value = "/ManagerSelect.do")
	public String Manager(String managerkey) {
		System.out.println("vvvv");
		if (managerkey.equals("weed123")) {
			return "redirect:/Manager.do";
		} else {
			return "redirect:/index.do";
		}

	}

	// 로그아웃
	@PostMapping("/logout.do")
	public String logout(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate(); // 세션을 제거한다.
		}
		return "redirect:/main.do";
	}

}
