package kr.animal.entity;

public class Member {
	
	// 1. 정보은닉(private)
	private int mem_num;
	private String mem_id;
	private String mem_name;
	private String mem_phone;
	private String mem_email;
	private String mem_pw;
	
	// 2. 멤버변수(=프로퍼티(property))
	public int getMemNum() {
		return mem_num;
	}

	public void setMemNum(int memNum) {
		this.mem_num = memNum;
	}

	public String getMemId() {
		return mem_id;
	}

	public void setMemId(String memId) {
		this.mem_id = memId;
	}

	public String getMemName() {
		return mem_name;
	}

	public void setMemName(String memName) {
		this.mem_name = memName;
	}

	public String getMemPhone() {
		return mem_phone;
	}

	public void setMemPhone(String memPhone) {
		this.mem_phone = memPhone;
	}

	public String getMemEmail() {
		return mem_email;
	}

	public void setMemEmail(String memEmail) {
		this.mem_email = memEmail;
	}

	public String getMemPw() {
		return mem_pw;
	}

	public void setMemPw(String memPw) {
		this.mem_pw = memPw;
	}
	
	
	// 3. 생성자 메소드
	
	// 전체 생성자
	public Member(int mem_num, String mem_id, String mem_name, String mem_phone, String mem_email, String mem_pw) {
		super();
		this.mem_num = mem_num;
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_pw = mem_pw;
	}

	// 회원가입용 생성자
	public Member(String mem_id, String mem_name, String mem_phone, String mem_email, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_pw = mem_pw;
	}


	// 로그인용 생성자
	public Member(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}
	
	
	//4. ToString
	@Override
	public String toString() {
		return "Member [mem_num=" + mem_num + ", mem_id=" + mem_id + ", mem_name=" + mem_name + ", mem_phone="
				+ mem_phone + ", mem_email=" + mem_email + ", mem_pw=" + mem_pw + "]";
	}
	
	
	
	
}
