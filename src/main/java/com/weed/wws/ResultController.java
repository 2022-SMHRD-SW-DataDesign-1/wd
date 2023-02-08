package com.weed.wws;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ResultController {
	
	@PostMapping(value = "/ArrSocket.do")
	public void Socket(HttpServletRequest request, HttpServletResponse response, String result) throws IOException {
		System.out.println("Arrsocket통신");

		try {
			Socket soc = new Socket("localhost", 1234);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
			
			System.out.println(result);
			dout.writeChars(result);
			
			dout.flush();
			dout.close();
			soc.close();
			
			System.out.println("닫힘");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}