package com.weed.wws;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.*;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChartController {
	
	//폴더 생성
	private String getFolders() {
		String str = "acc_img\\";
		return str;
	}
	
	@RequestMapping(value = "/ChartSocket.do",method = RequestMethod.GET)
	public JSONObject ChartSocket(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		response.setContentType("application/json; charset=UTF-8");
		System.out.println("socket통신 컨트롤러");

			JSONObject jsonobject;
			//Map<String, Object> map;
			
			DatagramSocket resultDataSocket = new DatagramSocket(50011);
	        DatagramSocket resultImgDataSocket = new DatagramSocket(50012);
	        System.out.println("Binding complete");
	        System.out.println("Socket connected");
	        
	        byte[] dataBuffer = new byte[1024];	// 분석값
	        byte[] imgDataBuffer = new byte[65536]; // 분석된 이미지
	          
			while (true) {
				System.out.println("socket 연결 대기");
				
				// 분석 결과
				DatagramPacket dataPacket = new DatagramPacket(dataBuffer, dataBuffer.length);
	            resultDataSocket.receive(dataPacket);
	            String data = new String(dataPacket.getData(), 0, dataPacket.getLength());
	            System.out.println("data:"+data);

	            
	            // data 작업해야함 -------------------------------------------------------- //
	            
	            
	            
	            
	            
	            
	            // ----- -------------------------------------------------------- //
	            
	            
	            // 분석 이미지
	            DatagramPacket imgDataPacket = new DatagramPacket(imgDataBuffer, imgDataBuffer.length);
	            resultImgDataSocket.receive(imgDataPacket);
	            byte[] image = imgDataPacket.getData();
	            System.out.println("Received frame size: " + imgDataPacket.getLength() + " bytes");
	            System.out.println("image: "+ image);
	            
	            // 이미지 byte값으로 변환
	            // 1. 이미지 저장 경로 설정
	            String l = request.getSession().getServletContext().getRealPath("/");
				String defaultfile = l+"resources\\images\\";
				System.out.println(defaultfile);
	            
	            // make folder
				File uploadPath = new File(defaultfile, getFolders());
				System.out.println("upload path: "+uploadPath);
				
				if (uploadPath.exists() == false) {
					uploadPath.mkdirs(); // make folder
				}
				
				// 2. 이미지 변환
				ByteArrayInputStream input_stream = new ByteArrayInputStream(image);
				BufferedImage p_image = ImageIO.read(input_stream);
				boolean tf = ImageIO.write(p_image, "jpg", new File(uploadPath+"\\"+ image+".jpg"));
				if (tf) {
					System.out.println("경로에 이미지 저장 성공");
				} else {
					System.out.println("이미지 저장 실패");
				}
				
				// 이미지 이름
				String filename = image+".jpg";
				System.out.println(filename);

				//사진 경로 담기, json에 담기
				jsonobject = new JSONObject();
				jsonobject.put("filename", filename);
				// model.addAttribute("filename", filename);
				
				//map = new HashMap<String, Object>();
				//map.put("filename", filename);

				System.out.println("이미지 넘김");
	            
				//return map;
				return jsonobject;
			}
		
			

			


	}// ChartSocket end
	
}
