package kr.animal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.animal.entity.Member;

// 우리가 알고있는 DAO와 같은 일을 하는 것을 알려주는 주석
//@Repository
@Mapper
// 0. Mapper는 인터페이스 파일로 만든다.
public interface AnimalMapper {
//	자바코드와 SQL문을 따로 관리
//	이 둘을 이어주는 연결의 의미로  Mapper라는 의미가 강해져서 dao보다 mapper라는 표현을 사용
	
//	DAO에서도 join, login... 메소드 만들기
//	dao에서는 sqlSessionFactory 만들어서 커넥션풀을 유지하고 있었음
//	DB연결은 스프링에서 알아서 만들어주고 있기 때문에 굳이 만들필요가 없다
//	스프링에서는 별도의 xml파일에서 DB커넥션을 이루고 있다.
	
/*//	1. BoardController의 메소드와 이름을 일치시켜 만든다.
//	select의 결과물로 xml에서 resultType과 같은 반환타입으로 메소드 리턴타입을 만들어줘야 한다.
	public List<Board> boardList();
//		SQL문은 어디에? XML에 만든다.
//		Query연결 위해서는 MyBatis이용
//		메소드 안에 적을 내용이 없어요 --> 추상메소드
//		인터페이스에서는 구현부가 없이 끝났었다 
//		--> BoardMapper는 class가 아니라 interface로 만들어야 한다.

	public void boardInsert(Board vo);

	public Board boardContent(int idx);

	public void boardUpdate(Board vo);

	//Delete("SQL문") 이렇게 쓸거며 mapper.xml에서 또 만들지 않아야 함
	//어노테이션으로 SQL문 관리하면 xml이 필요하지 않게 된다
	public void boardDelete(int idx);

	@Update("update board set content=#{content} where idx=#{idx}")
	public void boardContentUpdate(Board vo);

	@Update("update board set count=count+1 where idx=#{idx}")
	public void updateCount(int idx);
	//DB에 있는 조회수를 가져와서 갱신시켜줘야 되니까
	// 게시글 내용 불러오는 mapper 메소드 일 시켜서 반환*/


	public Member memberLogin(Member mvo);

	
}
