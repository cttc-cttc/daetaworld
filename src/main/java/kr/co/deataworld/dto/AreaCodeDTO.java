package kr.co.deataworld.dto;
//a_code varchar(3) PK 
//a_name1 varchar(10) 
//a_name2 varchar(10)
public class AreaCodeDTO {

	private String a_code;
	private String a_name1;
	private String a_name2;
	public String getA_code() {
		return a_code;
	}
	public void setA_code(String a_code) {
		this.a_code = a_code;
	}
	public String getA_name1() {
		return a_name1;
	}
	public void setA_name1(String a_name1) {
		this.a_name1 = a_name1;
	}
	public String getA_name2() {
		return a_name2;
	}
	public void setA_name2(String a_name2) {
		this.a_name2 = a_name2;
	}
	@Override
	public String toString() {
		return "AreaCodeDTO [a_code=" + a_code + ", a_name1=" + a_name1 + ", a_name2=" + a_name2 + "]";
	}
	
	
}
