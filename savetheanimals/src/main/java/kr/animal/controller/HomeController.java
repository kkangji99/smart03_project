package kr.animal.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.animal.entity.Animal;
import kr.animal.entity.Comment;
import kr.animal.entity.Member;
import kr.animal.entity.PageHandler;
import kr.animal.entity.Post;
import kr.animal.mapper.AdMapper;
import kr.animal.mapper.AnimalMapper;
import kr.animal.mapper.CommuMapper;

@Controller
public class HomeController {

	// 의존성 주입
	@Autowired
	private AnimalMapper mapper;
	@Autowired
	private AdMapper admapper;
	@Autowired
	private CommuMapper commumapper;

	// 메인페이지
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}

	// 유실동물 공고 페이지
	@GetMapping("/ad.do")
	public String ad(Model model) {

		List<Animal> list = admapper.allaniselect();
		List<Animal> list_dog = admapper.doganiselect();
		List<Animal> list_cat = admapper.cataniselect();

		model.addAttribute("list", list);
		model.addAttribute("list_dog", list_dog);
		model.addAttribute("list_cat", list_cat);
		
		model.addAttribute("checkDog", "전");
		model.addAttribute("checkCat", "전");
		return "ad";
	}
	// 등록 페이지로 이동
	@RequestMapping("/register_page.do")
	public String register_page() {
		return "register";
	}
	// 유실동물 공고 등록하기
	@RequestMapping("/register.do")
	public String register(Animal vo, @RequestParam(value = "aimg_name") MultipartFile file,HttpSession session) {
		mapper.register(vo);
		
	    System.out.println("파일 이름 : " + file.getOriginalFilename());
	    System.out.println("파일 크기 : " + file.getSize());
	    try(FileOutputStream fos = new FileOutputStream("c:/Aniaml_IMG/" + file.getOriginalFilename());
    	    InputStream is = file.getInputStream();
    	    ){int readCount = 0;
    	      byte[] buffer = new byte[1024];
    	      while((readCount = is.read(buffer)) != -1){
    	      fos.write(buffer,0,readCount);
    	      session.setAttribute("img_name", file.getOriginalFilename());
    	    }
    	    }catch(Exception ex){
    	      throw new RuntimeException("file Save Error");
    	    }
	    return "redirect:/imgnameset.do";
	}
	
	// 파일 이름 변경
	@RequestMapping("/imgnameset.do")
	public String imgnameset(HttpSession session,Animal vo) {
		int ani_num = mapper.imgnameset(vo);
		System.out.println(ani_num);
		String img_name = (String) session.getAttribute("img_name");
		Path file = Paths.get("C:\\Aniaml_IMG\\"+img_name);
        Path newFile = Paths.get("C:\\Aniaml_IMG\\"+ani_num+".jpg");
 
        try {
 
            Path newFilePath = Files.move(file, newFile);
 
            System.out.println(newFilePath);
 
        } catch (IOException e) {
            e.printStackTrace();
        }
	    return "register";
	}

	// 커뮤니티 페이지
	@GetMapping("/commu.do")
	public String commu(Model model, Integer page, Integer pageSize, HttpServletRequest request) {
		List<Post> post = commumapper.allpostselect();
		model.addAttribute("post", post);
		
		if(page==null) page= 1;
		if(pageSize==null) pageSize=10;
		int totalCnt = commumapper.postsize();
		PageHandler pageHandler = new PageHandler(totalCnt, page, pageSize);
		
		Map map = new HashMap();
		map.put("offset", (page-1)*pageSize);
		map.put("pageSize", pageSize);
		
		List<Post> list = commumapper.allpostselect2((page-1)*pageSize);
		model.addAttribute("list", list);
		model.addAttribute("ph",pageHandler);
		model.addAttribute("page", page);
		model.addAttribute("pageSize", pageSize);

		System.out.println(page);
		System.out.println(pageSize);
		return "commu";
	}	

	// 커뮤니티 글 등록
	@PostMapping("/commu_write.do")
	public String commu_write(Post post, Model model) {

		commumapper.postinsert(post);
		List<Post> post1 = commumapper.allpostselect();
		model.addAttribute("post", post1);

		return "commu";
	}

	// 커뮤니티 글 삭제
	@PostMapping("/post_delete.do")
	public String post_delete(Post post, Model model) {

		commumapper.postcomdelete(post);
		commumapper.postdelete(post);
		List<Post> post1 = commumapper.allpostselect();
		model.addAttribute("post", post1);

		return "commu";
	}

	// 커뮤니티 상세 페이지1
	@GetMapping("/commu_content.do")
	public String commu_content() {

		return "commu_content";
	}

	// 커뮤니티 상세 페이지2
	@GetMapping("/commu_info.do")
	public String commu_info(Post post, Model model, HttpServletRequest request) {
		Post postinfo = commumapper.selectpost(post);
		List<Comment> allcomm = commumapper.allcomselect(post);
		List<Member> memid = commumapper.memselect(post);

		model.addAttribute("postinfo", postinfo);
		model.addAttribute("allcomm", allcomm);
		model.addAttribute("memid", memid);

		if (postinfo != null) {

			HttpSession session = request.getSession();
			session.setAttribute("postinfo", postinfo);
		}

		return "commu_content";
	}

	// 커뮤니티 상세페이지 댓글 등록
	@PostMapping("/com_submit.do")
	public String com_submit(Comment com, HttpServletRequest request, Post post, Model model) {

		commumapper.comsubmit(com);

		Post postinfo = commumapper.selectpost(post);
		List<Comment> allcomm = commumapper.allcomselect(post);
		List<Member> memid = commumapper.memselect(post);

		model.addAttribute("postinfo", postinfo);
		model.addAttribute("allcomm", allcomm);
		model.addAttribute("memid", memid);

		if (postinfo != null) {

			HttpSession session = request.getSession();
			session.setAttribute("postinfo", postinfo);
		}

		return "commu_content";
	}

	// 커뮤니티 상세페이지 댓글 삭제
	@PostMapping("/com_delete.do")
	public String com_delete(Comment com, HttpServletRequest request, Post post, Model model) {

		commumapper.comdelete(com);

		Post postinfo = commumapper.selectpost(post);
		List<Comment> allcomm = commumapper.allcomselect(post);
		List<Member> memid = commumapper.memselect(post);

		model.addAttribute("postinfo", postinfo);
		model.addAttribute("allcomm", allcomm);
		model.addAttribute("memid", memid);

		if (postinfo != null) {

			HttpSession session = request.getSession();
			session.setAttribute("postinfo", postinfo);
		}

		return "commu_content";
	}

	// 유실동물 공고 상세 페이지
	@GetMapping("/ad_content.do")
	public String ad_content() {

		return "ad_content";
	}

	@GetMapping("/ad_info.do")
	public String ad_info(Animal ani, Model model) {

		Animal AniInfo = admapper.selectani(ani);
		model.addAttribute("AniInfo", AniInfo);

		return "ad_content";
	}

	@GetMapping("/searchDog.do")
	public String searchDog(Model model, Animal animal) {
		System.out.println("검색 시작");

		// all
		List<Animal> list = admapper.allaniselect();

		List<Animal> list_dog = admapper.doganiselect();
		List<Animal> list_cat = admapper.cataniselect();

		// search list
		List<Animal> searchDog = mapper.searchDog(animal);
		List<Animal> searchCat = mapper.searchCat(animal);

		System.out.println("개 검색 갯수" + searchDog.size());
		System.out.println("고양이 검색 갯수" + searchCat.size());

		model.addAttribute("list", list);
		model.addAttribute("list_dog", list_dog);
		model.addAttribute("list_cat", list_cat);
		model.addAttribute("searchDog", searchDog);

		// 개 검색결과 개수
		model.addAttribute("searchDogSize", searchDog.size());
		// 고양 검색결과 개수
		model.addAttribute("searchCatSize", searchCat.size());

		// 모든 동물 결과 개수
		model.addAttribute("listSize", list.size());
		// 모든 개 결과 개수
		model.addAttribute("listDogSize", list_dog.size());
		// 모든 고양 결과 개수
		model.addAttribute("listCatSize", list_cat.size());

		if(searchDog.size()==0) {
			model.addAttribute("checkDog", "없");
			model.addAttribute("checkCat", "전");
		}
		else {
			
			model.addAttribute("checkDog", "있");
			model.addAttribute("checkCat", "전");
			
		}
		
		return "ad";
	}

	@GetMapping("/searchCat.do")
	public String searchCat(Model model, Animal animal) {
		System.out.println("검색 시작");

		List<Animal> list = admapper.allaniselect();

		List<Animal> list_dog = admapper.doganiselect();
		List<Animal> list_cat = admapper.cataniselect();

		List<Animal> searchCat = mapper.searchCat(animal);

		System.out.println("고양이 검색 갯수" + searchCat.size());
		model.addAttribute("list", list);
		model.addAttribute("list_dog", list_dog);
		model.addAttribute("list_cat", list_cat);
		model.addAttribute("searchCat", searchCat);

		// 검색결과 개수
		model.addAttribute("searchCatSize", searchCat.size());

		// 모든 동물 결과 개수
		model.addAttribute("listSize", list.size());
		// 모든 개 결과 개수
		model.addAttribute("listDogSize", list_dog.size());
		// 모든 고양 결과 개수
		model.addAttribute("listCatSize", list_cat.size());

		if(searchCat.size()==0) {
			model.addAttribute("checkCat", "없");
			model.addAttribute("checkDog", "전");
		}
		else {
			
			model.addAttribute("checkCat", "있");
			model.addAttribute("checkDog", "전");
			
		}
		
		return "ad";
	}

	// 반려생활길잡이
	@GetMapping("/about.do")
	public String about() {

		return "about";
	}

	// 로그인
	@GetMapping("/login.do")
	public String login() {
//		System.out.println("로그인 페이지");

		return "login";
	}

	@PostMapping("/login_submit.do")
	public String login_submit(Member member, HttpServletRequest request, Model model) {
		Member loginMember = mapper.memberLogin(member);
		if (loginMember != null) {

			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);

		} else {
			request.setAttribute("LoginFailMessage", "로그인 실패!!");
			return "login";
		}

		return "index";
	}

	// 로그아웃
	@GetMapping("/logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "index";
	}

	// 회원가입
	@GetMapping("/join.do")
	public String join() {

		return "join";
	}

	@PostMapping("/join_submit.do")
	public String join_submit(Member member, HttpServletRequest request) {
//		System.out.println("회원가입 시도");

		mapper.memberJoin(member);
//		System.out.println("회원 체크");
//		System.out.println("회원가입 정보"+joinMember.getMem_id());

		return "index";
	}

	// 마이페이지
	@GetMapping("/mypage.do")
	public String mypage() {

		return "mypage";
	}
	
	// 마이페이지 수정
	@PostMapping("/mypage_update.do")
	public String mypage_update(Member member, HttpServletRequest request) {

		mapper.memberUpdate(member);

		Member loginMember = mapper.memberUpLogin(member);

		HttpSession session = request.getSession();
		session.setAttribute("loginMember", loginMember);
		
		return "mypage";
	}

	// 글쓰기 페이지
	@GetMapping("/commu_write.do")
	public String commu_write() {

		return "commu_write";
	}

}
