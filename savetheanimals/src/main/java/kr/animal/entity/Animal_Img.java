package kr.animal.entity;

public class Animal_Img {
	
	// 1. 정보은닉(private)
	private int aimg_num;
	private String aimg_path;
	private String aimg_name;
	private int aimg_ani_num;
	
	
	// 2. 멤버변수(=프로퍼티(property))
	public int getAimg_num() {
		return aimg_num;
	}


	public void setAimg_num(int aimg_num) {
		this.aimg_num = aimg_num;
	}


	public String getAimg_path() {
		return aimg_path;
	}


	public void setAimg_path(String aimg_path) {
		this.aimg_path = aimg_path;
	}


	public String getAimg_name() {
		return aimg_name;
	}


	public void setAimg_name(String aimg_name) {
		this.aimg_name = aimg_name;
	}


	public int getAimg_ani_num() {
		return aimg_ani_num;
	}


	public void setAimg_ani_num(int aimg_ani_num) {
		this.aimg_ani_num = aimg_ani_num;
	}


	
	// 3. 생성자 메소드
	
	// 전체 생성자
	public Animal_Img(int aimg_num, String aimg_path, String aimg_name, int aimg_ani_num) {
		super();
		this.aimg_num = aimg_num;
		this.aimg_path = aimg_path;
		this.aimg_name = aimg_name;
		this.aimg_ani_num = aimg_ani_num;
	}

	
	//이미지 등록/조회용 생성자
	public Animal_Img(String aimg_path, String aimg_name, int aimg_ani_num) {
		super();
		this.aimg_path = aimg_path;
		this.aimg_name = aimg_name;
		this.aimg_ani_num = aimg_ani_num;
	}


	//4. ToString
	@Override
	public String toString() {
		return "Animal_Img [aimg_num=" + aimg_num + ", aimg_path=" + aimg_path + ", aimg_name=" + aimg_name
				+ ", aimg_ani_num=" + aimg_ani_num + "]";
	}
	
}
