package com.weed.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.weed.entity.WeedDTO;
import org.springframework.stereotype.Controller;


@Mapper
public interface WwsMapper {

	//의뢰신청서

	@Insert("insert into t_request (req_type,email,company,name,phone,req_content) values(#{req_type, jdbcType=CHAR},#{email, jdbcType=VARCHAR},#{company, jdbcType=VARCHAR},#{name, jdbcType=VARCHAR},#{phone, jdbcType=VARCHAR},#{req_content, jdbcType=VARCHAR})")
	public int insertContact(WeedDTO dto);
	@Select("select * from t_request")
	public List<WeedDTO> getContact();
	@Delete("delete from t_request where 요청순번 = #{요청순번}")
	public int contactDelete(int num);
	
	//이미지테스트
	/*
	 * @Insert("insert into t_processing (email, image) values(#{email}, #{image}")
	 * public int insertImage(WeedDTO dto);
	 */
	//스트리밍 주소
	
}
