package kr.co.deataworld.dto;

/*
 * j_code int PK 
 * j_type1 varchar(20) 
 * j_type2 varchar(20)
 */
public class JobCodeDTO {
	private int j_code;
	private String j_type1;
	private String j_type2;
	
	@Override
	public String toString() {
		return "JobCodeDTO [j_code=" + j_code + ", j_type1=" + j_type1 + ", j_type2=" + j_type2 + "]";
	}

	public int getJ_code() {
		return j_code;
	}

	public void setJ_code(int j_code) {
		this.j_code = j_code;
	}

	public String getJ_type1() {
		return j_type1;
	}

	public void setJ_type1(String j_type1) {
		this.j_type1 = j_type1;
	}

	public String getJ_type2() {
		return j_type2;
	}

	public void setJ_type2(String j_type2) {
		this.j_type2 = j_type2;
	}
	
	
}
