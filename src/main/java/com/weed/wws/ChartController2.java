package com.weed.wws;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.*;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.channels.AsynchronousSocketChannel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChartController2 {
	
	@RequestMapping(value = "/ChartSocket2.do",method = RequestMethod.GET)
	public String ChartSocket(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		System.out.println("socket통신 컨트롤러");

		try {
			
			DatagramSocket resultDataSocket = new DatagramSocket(50011);
	        DatagramSocket resultImgDataSocket = new DatagramSocket(50012);
	        System.out.println("Binding complete");
	        System.out.println("Socket connected");
	        
	        byte[] dataBuffer = new byte[1024];
	        byte[] imgDataBuffer = new byte[65536];
	          
			
			System.out.println("socket 연결 대기");
			DatagramPacket dataPacket = new DatagramPacket(dataBuffer, dataBuffer.length);
            resultDataSocket.receive(dataPacket);
            System.out.println(new String(dataPacket.getData(), 0, dataPacket.getLength()));

            DatagramPacket imgDataPacket = new DatagramPacket(imgDataBuffer, imgDataBuffer.length);
            resultImgDataSocket.receive(imgDataPacket);
            System.out.println("Received frame size: " + imgDataPacket.getLength() + " bytes");

	            
	            
	            
	            
				return "aor2";
			
		} catch (Exception e) {
			System.out.println("error");
			return "redirect:/AOR.do";
		}

			

			


	}// ChartSocket end
	
}
