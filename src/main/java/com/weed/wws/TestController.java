package com.weed.wws;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.weed.entity.WeedDTO;
import com.weed.mapper.WwsMapper;

@Controller
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;

	@PostMapping(value = "/imgSave.do")
	public String imgSave(@RequestParam("file") MultipartFile file,HttpServletRequest request) {
		
		String fileRealName = file.getOriginalFilename();
		
		System.out.println("파일명 : "+fileRealName);
		
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "resource\\images\\test";
		
		System.out.println(uploadFolder);
		
		return "test";
		
		}
}
