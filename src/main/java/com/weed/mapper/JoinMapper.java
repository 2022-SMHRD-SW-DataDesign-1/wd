package com.weed.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.weed.entity.WeedDTO;

@Mapper
public interface JoinMapper {

	@Insert("insert into t_client values(#{email},#{company},#{password},'null')")
	public int Join(WeedDTO dto);
	
	@Select("select * from t_client where email = #{email} ,password = #{password}")
	public int Login(WeedDTO dto);
	
	
}
