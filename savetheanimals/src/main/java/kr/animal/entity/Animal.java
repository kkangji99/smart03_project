package kr.animal.entity;

public class Animal {
	
	// 1. 정보은닉(private)
	private int ani_num;
	private String ani_livestock;
	private String ani_kind;
	private String ani_color;
	private String ani_gender;
	private String ani_age;
	private String ani_neutered;
	private String ani_uniqueness;
	private String ani_occur_address;
	private String ani_datetime;
	private String ani_center_name;
	private String ani_protect_address;
	private String ani_phone;
	private int ani_mem_num;
	private String ani_cate_code;

	
	// 2. 멤버변수(=프로퍼티(property))
	public int getAni_num() {
		return ani_num;
	}


	public void setAni_num(int ani_num) {
		this.ani_num = ani_num;
	}


	public String getAni_livestock() {
		return ani_livestock;
	}


	public void setAni_livestock(String ani_livestock) {
		this.ani_livestock = ani_livestock;
	}


	public String getAni_kind() {
		return ani_kind;
	}


	public void setAni_kind(String ani_kind) {
		this.ani_kind = ani_kind;
	}


	public String getAni_color() {
		return ani_color;
	}


	public void setAni_color(String ani_color) {
		this.ani_color = ani_color;
	}


	public String getAni_gender() {
		return ani_gender;
	}


	public void setAni_gender(String ani_gender) {
		this.ani_gender = ani_gender;
	}


	public String getAni_age() {
		return ani_age;
	}


	public void setAni_age(String ani_age) {
		this.ani_age = ani_age;
	}


	public String getAni_neutered() {
		return ani_neutered;
	}


	public void setAni_neutered(String ani_neutered) {
		this.ani_neutered = ani_neutered;
	}


	public String getAni_uniqueness() {
		return ani_uniqueness;
	}


	public void setAni_uniqueness(String ani_uniqueness) {
		this.ani_uniqueness = ani_uniqueness;
	}


	public String getAni_occur_address() {
		return ani_occur_address;
	}


	public void setAni_occur_address(String ani_occur_address) {
		this.ani_occur_address = ani_occur_address;
	}


	public String getAni_datetime() {
		return ani_datetime;
	}


	public void setAni_datetime(String ani_datetime) {
		this.ani_datetime = ani_datetime;
	}


	public String getAni_center_name() {
		return ani_center_name;
	}


	public void setAni_center_name(String ani_center_name) {
		this.ani_center_name = ani_center_name;
	}


	public String getAni_protect_address() {
		return ani_protect_address;
	}


	public void setAni_protect_address(String ani_protect_address) {
		this.ani_protect_address = ani_protect_address;
	}


	public String getAni_phone() {
		return ani_phone;
	}


	public void setAni_phone(String ani_phone) {
		this.ani_phone = ani_phone;
	}


	public int getAni_mem_num() {
		return ani_mem_num;
	}


	public void setAni_mem_num(int ani_mem_num) {
		this.ani_mem_num = ani_mem_num;
	}


	public String getAni_cate_code() {
		return ani_cate_code;
	}


	public void setAni_cate_code(String ani_cate_code) {
		this.ani_cate_code = ani_cate_code;
	}
	

	//4. ToString
	@Override
	public String toString() {
		return "Animal [ani_num=" + ani_num + ", ani_livestock=" + ani_livestock + ", ani_kind=" + ani_kind
				+ ", ani_color=" + ani_color + ", ani_gender=" + ani_gender + ", ani_age=" + ani_age + ", ani_neutered="
				+ ani_neutered + ", ani_uniqueness=" + ani_uniqueness + ", ani_occur_address=" + ani_occur_address
				+ ", ani_datetime=" + ani_datetime + ", ani_center_name=" + ani_center_name + ", ani_protect_address="
				+ ani_protect_address + ", ani_phone=" + ani_phone + ", ani_mem_num=" + ani_mem_num + ", ani_cate_code="
				+ ani_cate_code + "]";
	}
	
}
