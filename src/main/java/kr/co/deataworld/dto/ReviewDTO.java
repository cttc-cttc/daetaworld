package kr.co.deataworld.dto;


//w_number int AI PK 
//w_rate double 
//w_comments varchar(500) 
//w_date datetime 
//m_id varchar(20)
//a_number int
//


public class ReviewDTO {

	private int w_number;
	private double w_rate;
	private String w_comments;
	private String w_date;
	private String m_id;
	private int a_number;
	
	@Override
	public String toString() {
		return "ReviewDTO [w_number=" + w_number + ", w_rate=" + w_rate + ", w_comments=" + w_comments + ", w_date="
				+ w_date + ", m_id=" + m_id + ", a_number=" + a_number + "]";
	}

	public int getW_number() {
		return w_number;
	}

	public void setW_number(int w_number) {
		this.w_number = w_number;
	}

	public double getW_rate() {
		return w_rate;
	}

	public void setW_rate(double w_rate) {
		this.w_rate = w_rate;
	}

	public String getW_comments() {
		return w_comments;
	}

	public void setW_comments(String w_comments) {
		this.w_comments = w_comments;
	}

	public String getW_date() {
		return w_date;
	}

	public void setW_date(String w_date) {
		this.w_date = w_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getA_number() {
		return a_number;
	}

	public void setA_number(int a_number) {
		this.a_number = a_number;
	}
	
	
	
	
}
