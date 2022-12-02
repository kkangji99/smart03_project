package kr.animal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.animal.entity.Animal_Img;

// 우리가 알고있는 DAO와 같은 일을 하는 것을 알려주는 주석
//@Repository
@Mapper
// 0. Mapper는 인터페이스 파일로 만든다.
public interface Animal_imgMapper {
	
	public List<Animal_Img> aniimgselect();

}
