package kr.animal.entity;

public class Category {
	
	// 1. 정보은닉(private)
	private String cate_code;
	private int cate_tier;
	private String cate_name;
	private String cate_parents;

	
	// 2. 멤버변수(=프로퍼티(property))
	public String getCate_code() {
		return cate_code;
	}


	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}


	public int getCate_tier() {
		return cate_tier;
	}


	public void setCate_tier(int cate_tier) {
		this.cate_tier = cate_tier;
	}


	public String getCate_name() {
		return cate_name;
	}


	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}



	public String getCate_parents() {
		return cate_parents;
	}


	public void setCate_parents(String cate_parents) {
		this.cate_parents = cate_parents;
	}

	
	
	// 3. 생성자 메소드
	
	// 전체 생성자
	public Category(String cate_code, int cate_tier, String cate_name, String cate_parents) {
		super();
		this.cate_code = cate_code;
		this.cate_tier = cate_tier;
		this.cate_name = cate_name;
		this.cate_parents = cate_parents;
	}

	//4. ToString
	@Override
	public String toString() {
		return "Category [cate_code=" + cate_code + ", cate_tier=" + cate_tier + ", cate_name=" + cate_name
				+ ", cate_parents=" + cate_parents + "]";
	}
	
}
