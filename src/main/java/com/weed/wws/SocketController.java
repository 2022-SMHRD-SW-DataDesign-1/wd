package com.weed.wws;

import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public void Socket(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("socket통신");

		try {
			Socket soc = new Socket("localhost", 12345);
			DataOutputStream dout = new DataOutputStream(soc.getOutputStream());
			DataInputStream in = new DataInputStream(soc.getInputStream());
			String msg = (String) in.readUTF();
			
			System.out.println("Server: " + msg);
			
			String image = request.getParameter("image");
			System.out.println(image);

			String email = request.getParameter("email");
			System.out.println(email);

			int size = image.length();
			String file = image.substring(size - 3);
			System.out.println(file);
			
			BufferedImage bImage = ImageIO.read(new File(image));
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ImageIO.write(bImage,file,bos);
			byte[] data = bos.toByteArray();
			dout.write(data);
			
			dout.flush();
			dout.close();
			soc.close();
			System.out.println("닫힘");
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}