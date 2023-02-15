package com.weed.wws;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ResultController {

	@RequestMapping(value = "/ArrSocket.do", method = RequestMethod.POST)
	public void Socket(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("valueResult") String valueResult) throws IOException {
		System.out.println("Arrsocket통신");

		try {
			Socket soc = new Socket("localhost", 50006);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());

			String str = valueResult;
			/* int[] digits = new int[str.length()]; */ 
			String arr = str.substring(0, str.length() - 1);
			System.out.println(arr);
			

			 dout.writeBytes(arr);
			 
			 dout.flush(); 
			 dout.close(); 
			 soc.close();

			System.out.println("닫힘");

		} catch (Exception e) {
			System.out.println("소켓에러");
			e.printStackTrace();
		}

		/*
		 * PrintWriter out = response.getWriter(); out.print("Test11");
		 */

	}
}