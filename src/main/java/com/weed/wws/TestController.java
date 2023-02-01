package com.weed.wws;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.weed.mapper.WwsMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;

	@PostMapping(value = "/imgSave.do")
	public String imgSave(MultipartFile[] uploadFile, Model model) {
		
		System.out.println("[TestController]");
		
		String uploadFolder = "C:\\Users\\smhrd\\git\\wd\\src\\main\\webapp\\resources\\images\\testimg";
		
		for(MultipartFile multipartFile : uploadFile) {
			log.info("------------------------------------------");
			log.info("Upload File Name: "+multipartFile.getOriginalFilename());
			log.info("Upload File Size: "+multipartFile.getSize());
			
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
				System.out.println("이미지 저장 완료");
			} catch (Exception e) {
				log.error(e.getMessage());
				System.out.println("error");
			} // end catch
		} //end for
		
		return "test";
	}
}
