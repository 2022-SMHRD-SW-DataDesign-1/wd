package com.weed.wws;

import java.io.DataInputStream;
import java.io.IOException;

import java.net.Socket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.weed.mapper.WwsMapper;

@Controller
public class ChartController {
	
	@Autowired
	private WwsMapper wwsMapper;
	
	@GetMapping (value = "/ChartSocket.do")
	public String ChartSocket(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		System.out.println("socket통신 컨트롤러");

		try {
			Socket chartSocket = new Socket("localhost", 1234); // 소켓 객체 만들기
			System.out.println("소켓 연결함");
			
			DataInputStream in = new DataInputStream(chartSocket.getInputStream()); // 소켓 값 받음
			System.out.println("값 받아오기");
			
			byte resultData;
			resultData = in.readByte();
			System.out.println(resultData); // 받아온 값 출력

			return "chart_test";

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/Chart.do";
		} // try catch

	}// ChartSocket end
	
}
