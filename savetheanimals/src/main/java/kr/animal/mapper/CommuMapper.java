package kr.animal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.animal.entity.Animal;
import kr.animal.entity.Comment;
import kr.animal.entity.Post;
import kr.animal.entity.Member;
import kr.animal.entity.Paging;
import kr.animal.entity.Post_Img;
import kr.animal.entity.Post_Img;

// 우리가 알고있는 DAO와 같은 일을 하는 것을 알려주는 주석
//@Repository
@Mapper
// 0. Mapper는 인터페이스 파일로 만든다.
public interface CommuMapper {
	
	public List<Post> allpostselect();
	public Post selectpost(Post post);
	public List<Comment> allcomselect(Post post);
	public List<Member> memselect(Post post);
	public void comsubmit(Comment com);
	public void comdelete(Comment com);
	public void postinsert(Post Post);
	public void postdelete(Post post);
	public void postcomdelete(Post post);

	//게시판 페이징
	public List<Post> allpostselect3(Paging paging);
	public int getTotalRowCount(Paging paging);
}
