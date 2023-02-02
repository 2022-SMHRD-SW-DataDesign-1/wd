package com.weed.wws;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.weed.entity.WeedDTO;
import com.weed.mapper.WwsMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class TestController {

	@Autowired
	private WwsMapper wwsMapper;

	@PostMapping(value = "/imgSave.do")
	public String imgSave(MultipartFile[] uploadFile, Model model, WeedDTO dto) {
		
		System.out.println("imgSave.do");
		
		String uploadFolder = "C:\\Users\\smhrd\\git\\wd\\src\\main\\webapp\\resources\\images\\testimg";
		
		String uploadName = "";
		for(MultipartFile multipartFile : uploadFile) {
			log.info("------------------------------------------");
			log.info("Upload File Name: "+multipartFile.getOriginalFilename()); // 업로드되는 파일의 이름
			log.info("Upload File Size: "+multipartFile.getSize()); // 업로드되는 파일의 크기
			
			uploadName = multipartFile.getOriginalFilename();
			
			//UUID 중복 방지
			UUID uuid = UUID.randomUUID();
			
			uploadName = uuid.toString()+"_"+uploadName;
			
			File imageName = new File(uploadFolder, uploadName); // File(저장폴더, 저장이름)
			
			try {
				multipartFile.transferTo(imageName); // 파일 저장
				System.out.println("이미지 저장 완료");
			} catch (Exception e) {
				log.error(e.getMessage());
				System.out.println("error");
			} // end catch
		} //end for
		
		String image = uploadFolder + uploadName;
		wwsMapper.insertImg(image);
		
		return "test_result";
	}
}
