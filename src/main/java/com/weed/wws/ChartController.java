package com.weed.wws;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChartController {
	
	@RequestMapping(value = "/ChartSocket.do",method = RequestMethod.GET)
	public String ChartSocket(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("socket통신 컨트롤러");

		
		try {
			
			DatagramSocket socket = new DatagramSocket();
			InetAddress address = InetAddress.getByName("172.30.1.52");
			
			//Socket cso = new Socket("172.30.1.52", 50007); // 소켓 객체 만들기
			System.out.println("소켓 연결함");
			/*
			 * DataInputStream in = new DataInputStream(cso.getInputStream()); // 소켓 값 받음
			 * System.out.println("값 받아오기");
			 * 
			 * byte resultData; resultData = in.readByte(); System.out.println(resultData);
			 * // 받아온 값 출력
			 */
			return "chart_test";

		} catch (Exception e) {
			System.out.println("소켓에러");
			e.printStackTrace();
			return "redirect:/Chart.do";
		} // try catch

	}// ChartSocket end
	
}
