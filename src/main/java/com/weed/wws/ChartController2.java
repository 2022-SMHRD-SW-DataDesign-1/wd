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
import java.util.ArrayList;
import java.util.List;

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
public class ChartController2 {
	@ResponseBody
	@RequestMapping(value = "/ChartSocket2.do",method = RequestMethod.GET)
	public String ChartSocket(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		System.out.println("socket통신 컨트롤러");

		//try {
			System.out.println("socket try");
		DatagramSocket resultDataSocket = InitSocketController.resultDataSocket;
		DatagramSocket resultImgDataSocket = InitSocketController.resultImgDataSocket;	
		
		//DatagramSocket resultDataSocket = new DatagramSocket(50020);
        //DatagramSocket resultImgDataSocket = new DatagramSocket(50021);
        System.out.println("Binding Address1: "+resultDataSocket.getLocalPort());
        System.out.println("Binding Address2: "+resultImgDataSocket.getLocalPort());
        System.out.println("Socket connected");
        
        byte[] dataBuffer = new byte[1024];
        byte[] imgDataBuffer = new byte[65536];
          
		
		System.out.println("socket 연결 대기");
		DatagramPacket dataPacket = new DatagramPacket(dataBuffer, dataBuffer.length);
		//System.out.println("dataPacket:"+dataPacket);
        resultDataSocket.receive(dataPacket);
        String byteData = new String(dataPacket.getData(), 0, dataPacket.getLength());
        System.out.println(byteData);

        DatagramPacket imgDataPacket = new DatagramPacket(imgDataBuffer, imgDataBuffer.length);
        System.out.println("imgDataPacket:"+imgDataPacket);
        resultImgDataSocket.receive(imgDataPacket);
        System.out.println("Received frame size: " + imgDataPacket.getLength() + " bytes");

	    //data변환 부
        //thing과 stuff를 구분지어서 배열로 만들어 줘야함.
        String substringData = byteData.substring(0,byteData.length()-2);
        System.out.println("byte_data: "+substringData);

        
        //객체 바인딩 부.
     
			
//			String[] list_type = byteData.split("/");
//			String cs_list = list_type[0];
//			String ct_list = list_type[1];
//			String se_list = list_type[2];
//			
//			System.out.println("cs_list:" + cs_list);
//			System.out.println("ct_list:" +ct_list);
//			System.out.println("se_list:" +se_list);
//			
//			String[] class_arr = cs_list.split(" ");
//			String[] count_arr = ct_list.split(" ");
//			String[] score_arr = se_list.split(" ");
//			
//			List<String> class_list = new ArrayList<String>();
//			String[] class_arr_list = new String[class_arr.length];
//			for(int i=0;i<class_arr.length;i++) {
//				class_arr_list[i]=class_arr[i];
//				System.out.println("c"+i+":"+class_arr_list[i]);
//				class_list.add(class_arr_list[i]);
//			}
//			
//			List<Integer> count_list = new ArrayList<Integer>();
//			int[] count_arr_list = new int[count_arr.length];
//			for(int i=0;i<count_arr.length;i++) {
//				count_arr_list[i]=Integer.parseInt(count_arr[i]);
//				System.out.println("c"+i+":"+count_arr_list[i]);
//				count_list.add(count_arr_list[i]);
//			}
//			
//			List<Float> score_list = new ArrayList<Float>();
//			float[] score_arr_list = new float[score_arr.length];
//			for(int i=0;i<score_arr.length;i++) {
//				score_arr_list[i]=Float.parseFloat(score_arr[i]);
//				System.out.println("s"+i+":"+score_arr_list[i]);
//				score_list.add(score_arr_list[i]);
//			}
			
//			JSONArray class_list_ = new JSONArray(class_list);
//			JSONArray count_list_ = new JSONArray(count_list);
//			JSONArray score_list_ = new JSONArray(score_list);
//			
//			JSONObject allList = new JSONObject();
//			allList.put("class_list", class_list_);// allList.class_list_[0]
//			allList.put("class_list", count_list_);
//			allList.put("class_list", score_list_);
//			System.out.println("allList : "+allList.toString());
//			
	        
		
		return substringData;
			
			

			


	}// ChartSocket end
	
}
