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

import kr.animal.entity.Member;
import kr.animal.mapper.AnimalMapper;


@Controller
public class HomeController {
	
	//의존성 주입
	@Autowired
	private AnimalMapper mapper;
	
	
	// 메인페이지
	@GetMapping("/index.do")
	public String index() {
		return "index";
	}
	
	// 유실동물 공고 페이지
	@GetMapping("/ad.do")
	public String ad() {      

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
	@GetMapping( "/ad_content.do")
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
	public String login(Member mvo , HttpServletRequest request) {      
		Member loginMember = mapper.memberLogin(mvo);
		
		if(loginMember != null) {
			// 1. 세션 객체 생성
			HttpSession session = request.getSession() ;
			
			//2. 세션에 값 저장(회원 정보 데이터를 객체 바인딩)
			session.setAttribute("loginMember", loginMember);
		}
		
	      return "login";
	}
	
	 // 로그아웃
	@PostMapping("/logout.do")
	public String logout() {      

	      return "index";
	}

	// 회원가입
	@GetMapping("/join.do")
	public String join() {      

	      return "join";
	   }
	
	// 마이페이지
	@GetMapping("/mypage.do")
	public String mypage() {      

	      return "mypage";
	   }

}
