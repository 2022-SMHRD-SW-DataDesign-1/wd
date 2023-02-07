package com.weed.wws;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Base64;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.xml.bind.DatatypeConverter;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.ui.Model;

import com.weed.entity.WeedDTO;
import com.weed.mapper.WwsMapper;

@Controller
public class SocketController {

	@Autowired
	private WwsMapper wwsMapper;

	@RequestMapping(value = "/Socket.do")
	public String Socket(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("socket통신");

		try {
			Socket soc = new Socket("localhost", 12345);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
			DataInputStream in = new DataInputStream(soc.getInputStream());
			
			// 내가 가지고있는 값
			String image = request.getParameter("image");
			System.out.println(image);

			String email = request.getParameter("email");
			System.out.println(email);
			// 이미지 확장자
			int size = image.length();
			String file = image.substring(size - 3);
			System.out.println("확장자:" + file);
			
			if(file!="jpg") {
				image.replace(file, "jpg");
			}
			
			// 이미지 byte값으로 변환 및 보내기
			BufferedImage bImage = ImageIO.read(new File(image));
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ImageIO.write(bImage,file,bos);
			byte[] data = bos.toByteArray();
			dout.write(data);
			
			System.out.println("전송완료");
			
			// 파이썬에서 보내는 값
			System.out.println("값 받아오기");
			in.readFully(data);
			
			ByteArrayInputStream input_stream= new ByteArrayInputStream(data);
			BufferedImage p_image = ImageIO.read(input_stream);
			ImageIO.write(p_image , "jpg", new File("C:\\Users\\smhrd\\Desktop\\image2\\img.jpg"));
			
			// dout.flush();
			dout.close();
			soc.close();
			System.out.println("닫힘");
			
			return "redirect:/rt.do";
			
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/Test.do";
		}

	}
}