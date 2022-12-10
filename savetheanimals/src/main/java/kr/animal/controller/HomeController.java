package kr.animal.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.animal.entity.Animal;
import kr.animal.entity.Comment;
import kr.animal.entity.Member;
import kr.animal.entity.Paging;
import kr.animal.entity.Post;
import kr.animal.mapper.AdMapper;
import kr.animal.mapper.AnimalMapper;
import kr.animal.mapper.CommuMapper;

@Controller
public class HomeController {

	List<Animal> ad1 = null;
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
	public String ad(Model model, @ModelAttribute("paging") Paging paging) {

		// 페이징
		int totalRowCount = admapper.getTotal(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting2();
		List<Animal> list = admapper.allaniselect(paging);
		
		model.addAttribute("list", list);
		
		List<Animal> allAdSelect = mapper.allAdSelect();
		List<Animal> dogAdSelect = mapper.dogAdSelect();
		List<Animal> catAdSelect = mapper.catAdSelect();
		model.addAttribute("allAdSelect", allAdSelect);
		model.addAttribute("dogAdSelect", dogAdSelect);
		model.addAttribute("catAdSelect", catAdSelect);
		
		model.addAttribute("checkDog", "전");
		model.addAttribute("checkCat", "전");
		
		return "ad";
	}
	
	// 강아지 공고
   @GetMapping("/ad1.do")
   public String ad1(Model model, @ModelAttribute("paging") Paging paging) {

		// 페이징
		int totalRowCount = admapper.getTotaldog(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting2();
		List<Animal> list_dog = admapper.doganiselect(paging);
		
		model.addAttribute("list_dog", list_dog);
		
		List<Animal> allAdSelect = mapper.allAdSelect();
		List<Animal> dogAdSelect = mapper.dogAdSelect();
		List<Animal> catAdSelect = mapper.catAdSelect();
		model.addAttribute("allAdSelect", allAdSelect);
		model.addAttribute("dogAdSelect", dogAdSelect);
		model.addAttribute("catAdSelect", catAdSelect);
		  
		model.addAttribute("checkDog", "전");
		model.addAttribute("checkCat", "전");
		
		return "ad1";
   }
   
   // 고양이 공고
   @GetMapping("/ad2.do")
   public String ad2(Model model, @ModelAttribute("paging") Paging paging) {

		// 페이징
		int totalRowCount = admapper.getTotalcat(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting2();
  	    List<Animal> list_cat = admapper.cataniselect(paging);

        model.addAttribute("list_cat", list_cat);
        
		List<Animal> allAdSelect = mapper.allAdSelect();
		List<Animal> dogAdSelect = mapper.dogAdSelect();
		List<Animal> catAdSelect = mapper.catAdSelect();
		model.addAttribute("allAdSelect", allAdSelect);
		model.addAttribute("dogAdSelect", dogAdSelect);
		model.addAttribute("catAdSelect", catAdSelect);
      
        model.addAttribute("checkDog", "전");
        model.addAttribute("checkCat", "전");
      
        return "ad2";
   }
   
   @GetMapping("/ad1_search.do")
	public String ad1_search() {
	   
		return "ad1_search";
	}
   
   @GetMapping("/ad2_search.do")
	public String ad2_search() {
	   
		return "ad2_search";
	}
   
   @RequestMapping("/searchDog.do")
   public String searchDog(Model model,HttpServletRequest request, @RequestParam(value = "aimg_name") MultipartFile file, Animal animal) {
      System.out.println("검색 시작");

      // search list
      List<Animal> searchDog = mapper.searchDog(animal);
      ad1= mapper.searchDog(animal);
      System.out.println("개 검색 갯수" + searchDog.size());
      model.addAttribute("searchDog", searchDog);

      // 개 검색결과 개수
      model.addAttribute("searchDogSize", searchDog.size());

      
      List<Animal> dogAdSelect = mapper.dogAdSelect();
      model.addAttribute("dogAdSelect", dogAdSelect);

      if(searchDog.size()==0) {
         model.addAttribute("checkDog", "없");
      }
      else {
         
         model.addAttribute("checkDog", "있");
         
      }
      
      // 이미지 파일 저장
      try {
      if(file.getOriginalFilename().length()>0) {
         System.out.println("파일 이름 : " + file.getOriginalFilename());
          System.out.println("파일 크기 : " + file.getSize());
          try(FileOutputStream fos = new FileOutputStream("c:/A_search_img/" + file.getOriginalFilename());
              InputStream is = file.getInputStream();
              ){int readCount = 0;
                byte[] buffer = new byte[1024];
                while((readCount = is.read(buffer)) != -1){
                fos.write(buffer,0,readCount);
              }
              }catch(Exception ex){
                throw new RuntimeException("file Save Error");
              }
       // 이미지 검색
       			String a= "";
       			for(int i = 0; i<searchDog.size();i++) {
       				if(i!=searchDog.size()-1) {
       					a+=searchDog.get(i).getAni_num();
       					a+=",";
       				}
       				else if(i==searchDog.size()-1){
       					a+=searchDog.get(i).getAni_num();
       				}
       			}
       			HashMap<String,String> pList = new HashMap<String,String>();
       			pList.put("a",a);
       			
       			HttpSession session = request.getSession();
       			String data = postRequest(pList);
       			System.out.println("data : "+data);
       			String[] data2 = data.split(",");
       			System.out.println(data2);
       			ArrayList<Integer> data3 = new ArrayList<Integer>();
       			for(int i=0; i<data2.length;i++) {
       				System.out.println(data2[i]);
       				data2[i] = data2[i].replace("[","");
       				data2[i] = data2[i].replace("]","");
       				data2[i] = data2[i].replace("\n","");

       				System.out.println(data2[i]);
       				data3.add(Integer.parseInt(data2[i]));
       			}
       			model.addAttribute("data", data3);
       			System.out.println(data3);
      }
      }catch(Exception e){   // 아무 처리가 없음
      }
      return "ad1_search";
   }
   
   
	@RequestMapping("/searchCat.do")
	public String searchCat(Model model,HttpServletRequest request, @RequestParam(value = "image_file") MultipartFile file, Animal animal, @ModelAttribute("paging2") Paging paging2) {
		System.out.println("검색 시작");
		
		List<Animal> searchCat = mapper.searchCat(animal);

		System.out.println("고양이 검색 갯수" + searchCat.size());
		model.addAttribute("searchCat", searchCat);

		// 검색결과 개수
		model.addAttribute("searchCatSize", searchCat.size());
		
		List<Animal> catAdSelect = mapper.catAdSelect();
		model.addAttribute("catAdSelect", catAdSelect);

		if(searchCat.size()==0) {
			model.addAttribute("checkCat", "없");
		}
		else {
			
			model.addAttribute("checkCat", "있");
			
		}
		// 이미지 파일 저장
		try {
		if(file.getOriginalFilename().length()>0) {
	      System.out.println("파일 이름 : " + file.getOriginalFilename());
	       System.out.println("파일 크기 : " + file.getSize());
	       try(FileOutputStream fos = new FileOutputStream("c:/A_search_img/" + file.getOriginalFilename());
	           InputStream is = file.getInputStream();
	           ){int readCount = 0;
	             byte[] buffer = new byte[1024];
	             while((readCount = is.read(buffer)) != -1){
	             fos.write(buffer,0,readCount);
	           }
	           }catch(Exception ex){
	             throw new RuntimeException("file Save Error");
	           }
	    // 이미지 검색
			String a= "";
			for(int i = 0; i<searchCat.size();i++) {
				if(i!=searchCat.size()-1) {
					a+=searchCat.get(i).getAni_num();
					a+=",";
				}
				else if(i==searchCat.size()-1){
					a+=searchCat.get(i).getAni_num();
				}
			}
			HashMap<String,String> pList = new HashMap<String,String>();
			pList.put("a",a);
			
			HttpSession session = request.getSession();
			String data = postRequest(pList);
			System.out.println("data : "+data);
			String[] data2 = data.split(",");
			System.out.println(data2);
			ArrayList<Integer> data3 = new ArrayList<Integer>();
			for(int i=0; i<data2.length;i++) {
				System.out.println(data2[i]);
				data2[i] = data2[i].replace("[","");
				data2[i] = data2[i].replace("]","");
				data2[i] = data2[i].replace("\n","");

				System.out.println(data2[i]);
				data3.add(Integer.parseInt(data2[i]));
			}
			model.addAttribute("data", data3);
			System.out.println(data3);
		}
		}
		catch(Exception e) {
		}
		return "ad2_search";
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

	@GetMapping("/commu.do")
	public String commu(Model model, @ModelAttribute("paging") Paging paging) {
		
		int totalRowCount = commumapper.getTotalRowCount(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting();
		List<Post> list = commumapper.allpostselect3(paging);
		model.addAttribute("list", list);
		
		return "commu";
	}
	
	// 커뮤니티 글 등록
	@RequestMapping("/commu_write.do")
	public String commu_write(Post post,@RequestParam(value = "pimg_name") MultipartFile file,
			HttpSession session,@ModelAttribute("paging") Paging paging, Model model) {

		if(file.isEmpty())
		{
			commumapper.postinsert(post);
			int totalRowCount = commumapper.getTotalRowCount(paging);
			paging.setTotalRowCount(totalRowCount);
			paging.pageSetting();
			List<Post> list = commumapper.allpostselect3(paging);
			model.addAttribute("list", list);
			return "commu";
		}
		else
		{
			commumapper.postinsert1(post);
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
			    
			    return "redirect:/commu_img.do";
		}
	    
	}
	
	// 커뮤니티 파일 이름 변경
	@RequestMapping("/commu_img.do")
	public String commu_img(Post post, HttpSession session, @ModelAttribute("paging") Paging paging, Model model) {
		int post_num = commumapper.commuimg(post);
		
		String img_name = (String)session.getAttribute("img_name");
		Path file = Paths.get("C:\\Aniaml_IMG\\"+img_name);
        Path newFile = Paths.get("C:\\Aniaml_IMG\\"+post_num+".jpg");
 
        try {
 
            Path newFilePath = Files.move(file, newFile);
 
            System.out.println(newFilePath);
 
        } catch (IOException e) {
            e.printStackTrace();
        }
        String num = Integer.toString(post_num); 
        String str = "image/"+num+".jpg";
        commumapper.fileupdate(str);

		int totalRowCount = commumapper.getTotalRowCount(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting();
		List<Post> list = commumapper.allpostselect3(paging);
		model.addAttribute("list", list);
		
	    return "commu";
	}

	// 커뮤니티 글 삭제
	@PostMapping("/post_delete.do")
	public String post_delete(Post post, Model model, @ModelAttribute("paging") Paging paging) {

		commumapper.postcomdelete(post);
		commumapper.postdelete(post);

		int totalRowCount = commumapper.getTotalRowCount(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting();
		List<Post> list = commumapper.allpostselect3(paging);
		model.addAttribute("list", list);

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
	
	// 서버 통신용
	public static String postRequest(HashMap <String, String> pList) {

        String myResult = "";
        String url = "http://127.0.0.1:5000/tospring";
        try {
            //   URL 설정하고 접속하기 
            
        	HttpURLConnection http = (HttpURLConnection) new URL(url).openConnection(); // 접속 
            //-------------------------- 
            //   전송 모드 설정 - 기본적인 설정 
            //-------------------------- 
            http.setDefaultUseCaches(false);
            http.setDoInput(true); // 서버에서 읽기 모드 지정 
            http.setDoOutput(true); // 서버로 쓰기 모드 지정  
            http.setRequestMethod("POST"); // 전송 방식은 POST



            //--------------------------
            // 헤더 세팅
            //--------------------------
            // 서버에게 웹에서 <Form>으로 값이 넘어온 것과 같은 방식으로 처리하라는 걸 알려준다 
            http.setRequestProperty("content-type", "application/x-www-form-urlencoded");


            //-------------------------- 
            //   서버로 값 전송 
            //-------------------------- 
            StringBuffer buffer = new StringBuffer();

            //HashMap으로 전달받은 파라미터가 null이 아닌경우 버퍼에 넣어준다
            if (pList != null) {

                Set key = pList.keySet();

                for (Iterator iterator = key.iterator(); iterator.hasNext();) {
                    String keyName = (String) iterator.next();
                    String valueName = pList.get(keyName);
                    buffer.append(keyName).append("=").append(valueName);
                }
            }

            OutputStreamWriter outStream = new OutputStreamWriter(http.getOutputStream(), "UTF-8");
            PrintWriter writer = new PrintWriter(outStream);
            System.out.println(buffer.toString());
            writer.write(buffer.toString());
            writer.flush();
            

            //--------------------------
            //   Response Code
            //--------------------------
            //http.getResponseCode();


            //-------------------------- 
            //   서버에서 전송받기 
            //-------------------------- 
            InputStreamReader tmp = new InputStreamReader(http.getInputStream(), "UTF-8");
            BufferedReader reader = new BufferedReader(tmp);
            StringBuilder builder = new StringBuilder();
            String str;
            while ((str = reader.readLine()) != null) {
                builder.append(str + "\n");
            }
            myResult = builder.toString();
            return myResult;

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("myResult : "+myResult);
        return myResult;
    }
	
}
