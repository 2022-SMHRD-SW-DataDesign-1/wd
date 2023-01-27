package com.weed.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.weed.entity.WeedDTO;



@Mapper
public interface WwsMapper {

	//의뢰신청서
	@Insert("insert into t_client values(#{email},#{compuny},#{name},#{phone},#{category},#{content},sysdate())")
	public int insertContect(WeedDTO dto);
	@Select("select * from t_client")
	public List<WeedDTO> getContect();
	@Delete("delete from t_client where 요청순번 = #{요청순번}")
	public int contectDelete(int num);
	
	
	//이미지테스트
	//스트리밍 주소
	
}
