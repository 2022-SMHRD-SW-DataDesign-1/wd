package com.weed.wws;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.weed.entity.WeedDTO;
import com.weed.mapper.JoinMapper;

@Controller
public class JoinController {

	@Autowired
	private JoinMapper joinMapper;
	
	// 회원가입
	@PostMapping(value = "/Join.do")
	public String JoinInsert(WeedDTO dto, HttpServletResponse response) throws IOException {
		
		try {
			System.out.println("ttttt");
			System.out.println(dto.getEmail());
			System.out.println(dto.getCompany());
			System.out.println(dto.getPassword());
			joinMapper.Join(dto);
			System.out.println("회원가입성공");
			return "redirect:/Main.do";
		}catch (Exception e) {
			e.printStackTrace();
			/*
			 * response.setContentType("text/html; charset=utf-8"); PrintWriter w =
			 * response.getWriter();
			 * w.write("<script>alert('빈 칸 없이 작성해주세요');history.go(-1);</script>");
			 * w.flush(); w.close();
			 */
			return "";
		}
		
	}

	// 로그인

	@PostMapping(value = "/Login.do")
	public String LoginSelect(WeedDTO dto, HttpServletRequest request, HttpServletResponse response) {

		System.out.println("로그인");
		System.out.println(dto.getEmail());
		WeedDTO member = joinMapper.Login(dto);
		if (member == null) {
			System.out.println("로그인 실패");
			return "redirect:/Main.do";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			System.out.println("로그인 성공");
			return "redirect:/index.do";

		}
	}

	// 관리자모드
	@PostMapping(value = "/ManagerSelect.do")
	public String Manager(String managerkey) {
		System.out.println("관리자모드");
		if (managerkey.equals("weed123")) {
			return "redirect:/Manager.do";
		} else {
			return "redirect:/Main.do";
		}

	}

	// 로그아웃
	@RequestMapping(value="/logout.do")
	public String logout(HttpServletResponse response, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate(); // 세션을 제거한다.
		System.out.println("제거완");

		return "redirect:/Main.do";
	}

}
