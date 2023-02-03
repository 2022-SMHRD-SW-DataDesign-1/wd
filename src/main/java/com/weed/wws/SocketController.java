package com.weed.wws;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.weed.mapper.WwsMapper;

@Controller
public class SocketController {

	@Autowired
	private WwsMapper wwsMapper;

	@RequestMapping(value = "/Socket.do")
	public void Socket() {
		System.out.println("socket통신");
		try {
			Socket soc = new Socket("localhost", 12345);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
			DataInputStream in = new DataInputStream(soc.getInputStream());
			String msg = (String) in.readUTF();
			System.out.println("Server: " + msg);
			dout.writeUTF("Ok Boss");
			dout.flush();
			dout.close();
			soc.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

	}
}