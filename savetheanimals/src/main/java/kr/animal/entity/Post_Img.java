package kr.animal.entity;

public class Post_Img {
	
	// 1. 정보은닉(private)
	private int pimg_num;
	private String pimg_path;
	private String pimg_name;
	private int pimg_post_num;

	
	// 2. 멤버변수(=프로퍼티(property))
	public int getPimg_num() {
		return pimg_num;
	}
	public void setPimg_num(int pimg_num) {
		this.pimg_num = pimg_num;
	}
	public String getPimg_path() {
		return pimg_path;
	}
	public void setPimg_path(String pimg_path) {
		this.pimg_path = pimg_path;
	}
	public String getPimg_name() {
		return pimg_name;
	}
	public void setPimg_name(String pimg_name) {
		this.pimg_name = pimg_name;
	}
	public int getPimg_post_num() {
		return pimg_post_num;
	}
	public void setPimg_post_num(int pimg_post_num) {
		this.pimg_post_num = pimg_post_num;
	}



	//4. ToString
	@Override
	public String toString() {
		return "Post_Img [pimg_num=" + pimg_num + ", pimg_path=" + pimg_path + ", pimg_name=" + pimg_name
				+ ", pimg_post_num=" + pimg_post_num + "]";
	}
	
}
