package com.weed.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.weed.entity.WeedDTO;

@Mapper
public interface JoinMapper {

	@Insert("insert into t_client values(#{email},#{company},#{password},'null')")
	public int Join(WeedDTO dto);
	
}
