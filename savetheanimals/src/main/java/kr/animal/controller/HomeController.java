package kr.animal.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.org.apache.regexp.internal.recompile;

import kr.animal.entity.Animal;
import kr.animal.entity.Member;
import kr.animal.entity.Post;
import kr.animal.entity.Comment;
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
		return "ad";
	}

	// 유실동물 공고 등록하기
	@GetMapping("/register.do")
	public String register() {

		return "register";
	}

	// 커뮤니티 페이지
	@GetMapping("/commu.do")
	public String commu(Model model) {
		List<Post> post = commumapper.allpostselect();
		model.addAttribute("post", post);
		return "commu";
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
	 
	// 커뮤니티 상세 페이지
	@GetMapping("/commu_content.do")
	public String commu_content() {

		return "commu_content";
	}
	
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
	
	// 커뮤니티 댓글 등록
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
	public String login_submit(Member member, HttpServletRequest request) {
//		System.out.print("로그인 시도");

		Member loginMember = mapper.memberLogin(member);
		if (loginMember != null) {

			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);

//			System.out.print("로그인성공" +loginMember.getMem_id());

		}else {
			return "login";
		}

		return "index";
	}

	// 로그아웃
	@GetMapping("/logout.do")
	public String Logout(HttpSession session)
	{
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

}
