package kr.co.deataworld.dto;


/*
 * w_number int AI PK 
 * w_rate double 
 * w_comments varchar(500) 
 * w_date datetime 
 * w_status int 
 * w_writer varchar(20) 
 * id_rated varchar(20) 
 * a_number int
 */



public class ReviewDTO {

	
	private double w_rate;
	private String w_comments;
	private String w_date;
	private int w_status;
	private String w_writer;
	private String id_rated;
	private int a_number;
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
	public int getW_status() {
		return w_status;
	}
	public void setW_status(int w_status) {
		this.w_status = w_status;
	}
	public String getW_writer() {
		return w_writer;
	}
	public void setW_writer(String w_writer) {
		this.w_writer = w_writer;
	}
	public String getId_rated() {
		return id_rated;
	}
	public void setId_rated(String id_rated) {
		this.id_rated = id_rated;
	}
	public int getA_number() {
		return a_number;
	}
	public void setA_number(int a_number) {
		this.a_number = a_number;
	}
	@Override
	public String toString() {
		return "ReviewDTO [w_rate=" + w_rate + ", w_comments=" + w_comments + ", w_date=" + w_date + ", w_status="
				+ w_status + ", w_writer=" + w_writer + ", id_rated=" + id_rated + ", a_number=" + a_number + "]";
	}
	
	
}
