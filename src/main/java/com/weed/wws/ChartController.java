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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
	@ResponseBody
	public Map<String, Object> ChartSocket(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		System.out.println("socket통신 컨트롤러");

			//JSONObject jsonobject = null;
			//JSONArray jasonArr = null;
			Map<String, Object> map = null;
			
			System.out.println("map 통과");
			
			DatagramSocket resultDataSocket = InitSocketController.resultDataSocket;
			DatagramSocket resultImgDataSocket = InitSocketController.resultImgDataSocket;
			
			//DatagramSocket resultDataSocket = new DatagramSocket(50013);
	        //DatagramSocket resultImgDataSocket = new DatagramSocket(50014);
	        System.out.println("Binding complete");
	        System.out.println("Socket connected");
	        
	        byte[] dataBuffer = new byte[1024];	// 분석값
	        byte[] imgDataBuffer = new byte[65536]; // 분석된 이미지
	          
		try {
				System.out.println("socket 연결 대기");
				// 분석 결과
				DatagramPacket dataPacket = new DatagramPacket(dataBuffer, dataBuffer.length);
	            resultDataSocket.receive(dataPacket);
	            String byteData = new String(dataPacket.getData(), 0, dataPacket.getLength());
	            System.out.println("data:"+byteData);

	            
	            // data 분석값 -------------------------------------------------------- //
				
				  // 1. thing과 stuff를 구분지어서 배열로 만들어 줘야함.
	            String substringData = byteData.substring(2,byteData.length()-2);
				  System.out.println("byte_data: "+substringData);
				  
				  // 2. 객체 바인딩 
				  String[] list_type = byteData.split("/");
				  String cs_list =list_type[0];
				  String ct_list = list_type[1];
				  String se_list = list_type[2];
				  
				  System.out.println("cs_list:" + cs_list);
				  System.out.println("ct_list:"+ct_list); 
				  System.out.println("se_list:" +se_list);
				  
				  String[] class_arr = cs_list.split(" ");
				  String[] count_arr = ct_list.split(" ");
				  String[] score_arr = se_list.split(" ");
				  
				  List<String> class_list = new ArrayList<String>();
				  String[] class_arr_list = new String[class_arr.length];
				  for(int i=0;i<class_arr.length;i++) {
					  class_arr_list[i]=class_arr[i];
					  System.out.println("c"+i+":"+class_arr_list[i]);
					  class_list.add(class_arr_list[i]);
				  }
				  
				  List<Integer> count_list = new ArrayList<Integer>();
				  int[] count_arr_list = new int[count_arr.length];
				  for(int i=0;i<count_arr.length;i++) {
					 count_arr_list[i]=Integer.parseInt(count_arr[i]);
					 System.out.println("c"+i+":"+count_arr_list[i]);
					 count_list.add(count_arr_list[i]);
				  }
				
				  List<Float> score_list = new ArrayList<Float>();
				  float[] score_arr_list = new float[score_arr.length];
				  for(int i=0;i<score_arr.length;i++) {
					 score_arr_list[i]=Float.parseFloat(score_arr[i]);
					 System.out.println("s"+i+":"+score_arr_list[i]);
					 score_list.add(score_arr_list[i]);
				  }

				 
				//JSONArray class_list_ = new JSONArray(class_list);
				//JSONArray count_list_ = new JSONArray(count_list);
				//JSONArray score_list_ = new JSONArray(score_list);
				
				//model.addAttribute("class_list",class_list_);
				//model.addAttribute("count_list",count_list_);
				//model.addAttribute("score_list",score_list_);
	            
	            
	            
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
				String filename = image+".jpg";
				System.out.println(filename);
				
				// 이미지 이름 [자르기
				String subfilename = filename.substring(filename.lastIndexOf("[")+1);
				System.out.println(subfilename);
				
				BufferedImage p_image = ImageIO.read(input_stream);
				boolean tf = ImageIO.write(p_image, "jpg", new File(uploadPath+"\\"+ subfilename));
				if (tf) {
					System.out.println("경로에 이미지 저장 성공");
				} else {
					System.out.println("이미지 저장 실패");
				}
				
				// 이미지 이름
				

				//사진 경로 담기, json에 담기
				//jsonobject = new JSONObject();
				//jsonobject.put("filename", filename);
				//jsonobject.put("class_list", class_list);
				//jsonobject.put("count_list", count_list);
				//jsonobject.put("score_list", score_list);
				
				
				
				map = new HashMap<String, Object>();
				map.put("filename", subfilename);
				map.put("class_list", class_list);
				map.put("count_list", count_list);
				map.put("score_list", score_list);
				
				//System.out.println(jsonobject.toString());
				

				//model.addAttribute("filename", filename);
				System.out.println("이미지 넘김");
	            
				//return map;
				
				
				return map;
				
	
		} catch (Exception e) {
			System.out.println("이미지 못 넘김");
			System.out.println("error:"+ e);

			return map;
		}
			
	}// ChartSocket end
	
}
