package com.weed.mapper;

import java.lang.reflect.Member;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.weed.entity.WeedDTO;

@Mapper
public interface JoinMapper {

	// 회원가입 o
	@Insert("insert into t_client(email, company, password) values(#{email},#{company},#{password})")
	public int Join(WeedDTO dto);

	// 로그인 x
	@Select("select * from t_client where email = #{email} and password = #{password}")
	public WeedDTO Login(WeedDTO dto);

	

	/*
	 * @Select("select * from t_client where email = #{email} and password = #{password}"
	 * ) public Member Login(String email, String password);
	 */

}
