package com.weed.wws;

import java.util.List;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	// 의뢰서 목록 조회
	@RequestMapping(value = "/contactSelect.do")
	public String contactList(Model model) {
		System.out.println("contactSelect.do");
		List<WeedDTO> list = wwsMapper.getContact();
		model.addAttribute("list", list);
		System.out.println("의뢰신청서 조회 성공");
		return "manager";
	}

	// 의뢰서 상세 조회
	@GetMapping(value = "/detailGetAsync.do")
	public WeedDTO boatdGetAsync(@RequestParam("req_seq") int req_seq) {
		WeedDTO dto = wwsMapper.getDetail(req_seq);
		System.out.println("상세의뢰 조회성공");

		return dto;
	}
	// 의뢰서 삭제
	@GetMapping(value = "/DeleteAsync.do")
	public boolean DeleteAsync(@RequestParam("req_seq") int req_seq) {
		System.out.println("삭제신청컨트롤러");
		System.out.println(req_seq);
		int res = wwsMapper.contactDelete(req_seq);
		if (res > 0) {
			System.out.println("삭제성공");
			return true;
		} else {
			return false;
		}
	}
}
