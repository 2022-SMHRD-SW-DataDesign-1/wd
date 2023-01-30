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
	@Insert("insert into t_request values(#{email},#{company},#{name},#{phone},#{req_type},#{req_content},sysdate())")
	public int insertContect(WeedDTO dto);
	@Select("select * from t_request")
	public List<WeedDTO> getContect();
	@Delete("delete from t_request where 요청순번 = #{요청순번}")
	public int contectDelete(int num);
	
	
	@Insert("insert into t_request(email, req_type, req_content, req_dt, name, phone, company) "
			+ "values(#{email}, #{req_type}, #{{req_content}, sysdate(), #{name}, #{phone}, #{company})")
	public int insert(WeedDTO dto);
	
	//이미지테스트
	//스트리밍 주소
	
}
