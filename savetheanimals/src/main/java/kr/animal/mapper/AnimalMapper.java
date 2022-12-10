package kr.animal.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.animal.entity.Member;
import kr.animal.entity.Paging;
import kr.animal.entity.Animal;

// 우리가 알고있는 DAO와 같은 일을 하는 것을 알려주는 주석
//@Repository
@Mapper
// 0. Mapper는 인터페이스 파일로 만든다.
public interface AnimalMapper {

	// 로그인
	public Member memberLogin(Member member);
	
	//회원가입
	public void memberJoin(Member member);
	
	// 마이페이지 업데이트
	public void memberUpdate(Member member);

	// 업데이트 후 로그인
	public Member memberUpLogin(Member member);
	
   //조건 검색
   public List<Animal> searchDog(Animal animal);

   public List<Animal> searchCat(Animal animal);
   
	public List<Animal> allAdSelect();
	public List<Animal> dogAdSelect();
	public List<Animal> catAdSelect();
   

   public void register(Animal vo);
   public void register_img(@Param("str")String str, @Param("num")int num);
   
   public int imgnameset(Animal vo);
   
    // 페이징
	public int getCountdog(Paging paging);
	public int getCountcat(Paging paging);
	//List<HashMap<?,?>> selectDog(Animal animal, Paging paging1);
	//public List<Animal> selectDog(Map<String, Object> map);
	public List<Animal> selectDog(@Param("ani")Animal animal, @Param("page")Paging paging);
	
}
