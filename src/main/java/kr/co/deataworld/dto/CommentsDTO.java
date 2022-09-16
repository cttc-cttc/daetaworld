package kr.co.deataworld.dto;

//c_number int AI PK 
//c_contents varchar(500) 
//c_date datetime 
//m_id varchar(20) 
//r_code int 
//b_number int 
//del int


public class CommentsDTO {

	private int c_number;
	private String c_contents;
	private String c_date;
	private String m_id;
	private int r_code;
	private int b_number;
	private int del;
	
	
	
	
	
	@Override
	public String toString() {
		return "CommentsDTO [c_number=" + c_number + ", c_contents=" + c_contents + ", c_date=" + c_date + ", m_id="
				+ m_id + ", r_code=" + r_code + ", b_number=" + b_number + ", del=" + del + "]";
	}
	public int getC_number() {
		return c_number;
	}
	public void setC_number(int c_number) {
		this.c_number = c_number;
	}
	public String getC_contents() {
		return c_contents;
	}
	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getR_code() {
		return r_code;
	}
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	
	
}
