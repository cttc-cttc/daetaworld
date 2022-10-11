package kr.co.deataworld.dto;

/*
 * b_number int AI PK 
b_code int 
b_title varchar(30) 
b_contents varchar(2000) 
b_hits int 
b_date datetime 
r_id varchar(20) 
e_id varchar(20) 
r_code int
 */

public class BoardDTO {
	private int rownum;
	private int b_number;
	private int b_code;
	private String b_title;
	private String b_contents;
	private int b_hits;
	private String b_date;
	private String m_id;
	private String m_nick;
	private int r_code;
	private int del;
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public int getB_code() {
		return b_code;
	}
	public void setB_code(int b_code) {
		this.b_code = b_code;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_contents() {
		return b_contents;
	}
	public void setB_contents(String b_contents) {
		this.b_contents = b_contents;
	}
	public int getB_hits() {
		return b_hits;
	}
	public void setB_hits(int b_hits) {
		this.b_hits = b_hits;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public int getR_code() {
		return r_code;
	}
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "BoardDTO [rownum=" + rownum + ", b_number=" + b_number + ", b_code=" + b_code + ", b_title=" + b_title
				+ ", b_contents=" + b_contents + ", b_hits=" + b_hits + ", b_date=" + b_date + ", m_id=" + m_id
				+ ", m_nick=" + m_nick + ", r_code=" + r_code + ", del=" + del + "]";
	}
	
}


	
	