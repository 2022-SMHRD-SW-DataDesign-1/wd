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

	//의뢰신청서 작성
	@Insert("insert into t_request (req_type,email,company,name,phone,req_content) values(#{req_type, jdbcType=CHAR},#{email, jdbcType=VARCHAR},#{company, jdbcType=VARCHAR},#{name, jdbcType=VARCHAR},#{phone, jdbcType=VARCHAR},#{req_content, jdbcType=VARCHAR})")
	public int insertContact(WeedDTO dto);
	// 관리자 페이지 등장과 동시에 의뢰서 목록 조회
	@Select("select * from t_request")
	public List<WeedDTO> getContact();
	// 의뢰서 상세 조회
	@Select("select * from t_request where req_seq = #{req_seq}")
	public WeedDTO getDetail(int req_seq);
	// 의뢰서 삭제
	@Delete("delete from t_request where req_seq = #{req_seq}")
	public int contactDelete(int num);
	// 원본 이미지 경로 저장
	//@Insert("insert into t_processing (email, image) values(#{email, jdbcType=VARCHAR}, #{image, jdbcType=VARCHAR})")
	@Insert("insert into t_processing (image) values(#{image, jdbcType=VARCHAR})")
	public int insertImg(String image);
	
}
