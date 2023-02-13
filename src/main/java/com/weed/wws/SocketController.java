package com.weed.wws;

import javax.imageio.ImageIO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import com.weed.mapper.WwsMapper;

@Controller
public class SocketController {

	@Autowired
	private WwsMapper wwsMapper;
	
	//폴더 생성
	private String getFolders() {

		String str = "result_img\\";
		
		return str;
	}
	

	@RequestMapping(value = "/Socket.do")
	public String Socket(HttpServletRequest request, HttpServletResponse response, MultipartFile multipartFile, Model model)
			throws IOException {
		
		System.out.println("socket통신");

		try {
			Socket soc = new Socket("172.30.1.63", 12345);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
			DataInputStream in = new DataInputStream(soc.getInputStream());

			// 내가 가지고있는 값
			String image = request.getParameter("image");
			System.out.println(image);

			String email = request.getParameter("email");
			System.out.println(email);
			
			// 이미지 byte값으로 변환 및 보내기
			File beforeFile = new File(image);
			BufferedImage beforeImg = ImageIO.read(beforeFile);
			BufferedImage afterImg = new BufferedImage(beforeImg.getWidth(), beforeImg.getHeight(), BufferedImage.TYPE_INT_RGB);
			afterImg.createGraphics().drawImage(beforeImg, 0, 0, Color.white, null);
			ImageIO.write(afterImg, "jpg", beforeFile);
			
			BufferedImage bImage = ImageIO.read(new File(image));
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ImageIO.write(bImage, "jpg", bos);
			byte[] data = bos.toByteArray();
			dout.write(data);

			System.out.println("전송완료");

			String[] name = image.split("_");
					
			// 파이썬에서 보내는 값
			System.out.println("값 받아오기");
			in.read(data);
			System.out.println(data);
			
			String l = request.getSession().getServletContext().getRealPath("/");
			String defaultfile = l+"resources\\images\\";
			System.out.println(defaultfile);
			
			// make folder
			File uploadPath = new File(defaultfile, getFolders());
			System.out.println("upload path: "+uploadPath);
			
			if (uploadPath.exists() == false) {
				uploadPath.mkdirs(); // make folder
			}

			ByteArrayInputStream input_stream = new ByteArrayInputStream(data);
			BufferedImage p_image = ImageIO.read(input_stream);
			ImageIO.write(p_image, "jpg", new File(uploadPath+"\\"+name[2]));
			String fileload = name[2];
			System.out.println("원본값 : " + fileload);
			
			int idx = image.indexOf("_"); 
			String filename = image.substring(idx+5);
			System.out.println("팬옵틱값 : " + filename);

			// dout.flush();
			dout.close();
			soc.close();
			
			model.addAttribute("filename", filename);
			model.addAttribute("fileload",fileload);
			System.out.println("닫힘");
			
			try {
				System.out.println("새로 열기");
				
				Socket listsoc = new Socket("172.30.1.63", 123);
				DataInputStream listin = new DataInputStream(listsoc.getInputStream());
						
				System.out.println("리스트값");
				
				byte[] all = new byte[65536];
				listin.read(all);
				System.out.println(all);
				
				String result_list = new String(all,"utf-8");
				System.out.println(result_list);

				listsoc.close();
				
				String[] list_type = result_list.split("/");
				String cs_list = list_type[0];
				String ct_list = list_type[1];
				String se_list = list_type[2];
				
				System.out.println("cs_list:" + cs_list);
				System.out.println("ct_list:" +ct_list);
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
				
				JSONArray class_list_ = new JSONArray(class_list);
				JSONArray count_list_ = new JSONArray(count_list);
				JSONArray score_list_ = new JSONArray(score_list);
				
				model.addAttribute("class_list",class_list_);
				model.addAttribute("count_list",count_list_);
				model.addAttribute("score_list",score_list_);
				
			} catch (Exception e) {
				System.out.println("오류");
			}
			return "test_result";
			

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/Test.do";
		}

	}
}