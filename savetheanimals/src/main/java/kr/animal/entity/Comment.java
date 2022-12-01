package kr.animal.entity;

public class Comment {
	
	// 1. 정보은닉(private)
	private int comm_num;
	private String comm_contents;
	private String comm_datetime;
	private int comm_mem_num;
	private int comm_post_num;

	
	// 2. 멤버변수(=프로퍼티(property))
	public int getComm_num() {
		return comm_num;
	}


	public void setComm_num(int comm_num) {
		this.comm_num = comm_num;
	}


	public String getComm_contents() {
		return comm_contents;
	}


	public void setComm_contents(String comm_contents) {
		this.comm_contents = comm_contents;
	}


	public String getComm_datetime() {
		return comm_datetime;
	}


	public void setComm_datetime(String comm_datetime) {
		this.comm_datetime = comm_datetime;
	}


	public int getComm_mem_num() {
		return comm_mem_num;
	}


	public void setComm_mem_num(int comm_mem_num) {
		this.comm_mem_num = comm_mem_num;
	}


	public int getComm_post_num() {
		return comm_post_num;
	}


	public void setComm_post_num(int comm_post_num) {
		this.comm_post_num = comm_post_num;
	}

	//4. ToString
	@Override
	public String toString() {
		return "Comment [comm_num=" + comm_num + ", comm_contents=" + comm_contents + ", comm_datetime=" + comm_datetime
				+ ", comm_mem_num=" + comm_mem_num + ", comm_post_num=" + comm_post_num + "]";
	}

}
