package com.weed.wws;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.Socket;

import com.weed.mapper.WwsMapper;

@Controller
public class SocketController {

	@Autowired
	private WwsMapper wwsMapper;

	@RequestMapping(value = "/Socket.do")
	public String Socket(HttpServletRequest request, HttpServletResponse response, MultipartFile multipartFile, Model model)
			throws IOException {
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
			String files = image.substring(size - 3);
			System.out.println("확장자:" + files);

			if (files.equals("jpg")) {
				System.out.println("jpg입니다.");
			} else {
				image = image.replace(files, "jpg");
				System.out.println(image);
				String[] arr = image.split("_");
				System.out.println(arr[1]);
				String uploadFolder = "C:\\upload";
				System.out.println("업로드경로:" + uploadFolder);
				String uploadFileName = arr[1];
				File saveFile = new File(uploadFolder, uploadFileName); // File(저장폴더, 저장이름)
				try {
					System.out.println("이미지경로:" + saveFile);
					multipartFile.transferTo(saveFile); // 파일 저장
					System.out.println("이미지 저장 완료");
					image = uploadFolder+"\\" + uploadFileName;
					System.out.println(image);
				} catch (Exception e) {
					System.out.println("error");
				} // end catch
			} // end for
		
			// 이미지 byte값으로 변환 및 보내기
			BufferedImage bImage = ImageIO.read(new File(image));
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ImageIO.write(bImage, "jpg", bos);
			byte[] data = bos.toByteArray();
			dout.write(data);

			System.out.println("전송완료");

			String[] name = image.split("_");
					
			// 파이썬에서 보내는 값
			System.out.println("값 받아오기");
			in.readFully(data);
			
			String l = "C:\\upload\\";
			ByteArrayInputStream input_stream = new ByteArrayInputStream(data);
			BufferedImage p_image = ImageIO.read(input_stream);
			ImageIO.write(p_image, "jpg", new File(l+name[1]));
			String fileload = name[1];
			System.out.println(fileload);

			// dout.flush();
			dout.close();
			soc.close();
			
			model.addAttribute("image", image);
			model.addAttribute("fileload",fileload);
			System.out.println("닫힘");
			return "test_result";

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/Test.do";
		}

	}
}