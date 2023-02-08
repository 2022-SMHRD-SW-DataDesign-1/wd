package com.weed.wws;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.weed.entity.WeedDTO;
import com.weed.mapper.WwsMapper;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;

	//폴더 생성
	private String getFolder() {

		String str = "original_img\\";
		
		return str;
	}
	
	@PostMapping(value = "/imgSave.do")
	public String imgSave(MultipartFile[] uploadFile, Model model, WeedDTO dto, HttpServletRequest request,RedirectAttributes rdat) {
		
		System.out.println("imgSave.do");

		String email = request.getParameter("email");
	    System.out.println("email: " + email);

		String l = request.getSession().getServletContext().getRealPath("/");
		String defaultfile = l+"resources\\images\\";
		System.out.println(defaultfile);	    

		// make folder
		File uploadPath = new File(defaultfile, getFolder());
		System.out.println("upload path: "+uploadPath);
		
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs(); // make folder
		}
		
		String uploadFileName="";
		for(MultipartFile multipartFile : uploadFile) {
			System.out.println("------------------------------------------");
			System.out.println("Upload File Name: "+multipartFile.getOriginalFilename()); // 업로드되는 파일의 이름
			System.out.println("Upload File Size: "+multipartFile.getSize()); // 업로드되는 파일의 크기
			
			uploadFileName = multipartFile.getOriginalFilename();
			
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
			System.out.println("only file name: "+uploadFileName);
			
			//UUID 중복 방지
			UUID uuid = UUID.randomUUID();
			
			uploadFileName = uuid.toString()+"_"+uploadFileName;
			
			File saveFile = new File(uploadPath, uploadFileName); // File(저장폴더, 저장이름)
			
			try {
				multipartFile.transferTo(saveFile); // 파일 저장
				System.out.println("이미지 저장 완료");
			} catch (Exception e) {
				log.error(e.getMessage());
				System.out.println("error");
			} // end catch
		} //end for
	
		String image = uploadPath+"\\" + uploadFileName;
		
		System.out.println("image" + image);
		
		dto.setImage(image);
		wwsMapper.insertImg(dto);
		
		System.out.println("삽입성공");
		
		rdat.addAttribute("image", image);
		rdat.addAttribute("email", email);
		
		return "redirect:/Socket.do";
	}
}
