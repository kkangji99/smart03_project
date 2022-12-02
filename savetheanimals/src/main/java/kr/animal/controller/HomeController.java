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
import kr.animal.entity.Animal_Img;
import kr.animal.entity.Member;
import kr.animal.mapper.AdMapper;
import kr.animal.mapper.AnimalMapper;
import kr.animal.mapper.Animal_imgMapper;

@Controller
public class HomeController {

	// 의존성 주입
	@Autowired
	private AnimalMapper mapper;
	@Autowired
	private AdMapper admapper;
	@Autowired
	private Animal_imgMapper imgmapper;

	// 메인페이지
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}

	// 유실동물 공고 페이지
	@GetMapping("/ad.do")
	public String ad(Model model) {

		List<Animal> list = admapper.allaniselect();
		List<Animal_Img> list_img = imgmapper.aniimgselect();
		
		model.addAttribute("list", list);
		model.addAttribute("list_img", list_img);
		return "ad";
	}

	// 유실동물 공고 등록하기
	@GetMapping("/register.do")
	public String register() {

		return "register";
	}

	// 커뮤니티 페이지
	@GetMapping("/commu.do")
	public String commu() {

		return "commu";
	}

	// 유실동물 공고 상세 페이지
	@GetMapping("/ad_content.do")
	public String ad_content() {

		return "ad_content";
	}

	// 커뮤니티 상세 페이지
	@GetMapping("/commu_content.do")
	public String commu_content() {

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

		}

		return "index";
	}

	// 로그아웃
	@PostMapping("/logout.do")
	public String logout(HttpSession session) {
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
