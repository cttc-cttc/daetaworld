package kr.co.deataworld.dto;
//a_number int AI PK 
//a_date varchar(50) 
//a_time varchar(50) 
//a_wage int 
//a_urgency int 
//a_status int 
//ua_date datetime 
//a_type int 
//m_id varchar(20) 
//r_code int 
//s_number int
//del int
//job_code int

public class JobAdsDTO {

	private int a_number;
	private String a_date;
	private String a_time;
	private int a_wage;
	private int a_need;
	private int a_urgency;
	private int a_status;
	private String ua_date;
	private int a_type;
	private String m_id;
	private int r_code;
	private int s_number;
	private int del;

	// 추가함 이성원
	private int job_code;
	

	public int getA_number() {
		return a_number;
	}
	public void setA_number(int a_number) {
		this.a_number = a_number;
	}
	public String getA_date() {
		return a_date;
	}
	public void setA_date(String a_date) {
		this.a_date = a_date;
	}
	public String getA_time() {
		return a_time;
	}
	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	public int getA_wage() {
		return a_wage;
	}
	public void setA_wage(int a_wage) {
		this.a_wage = a_wage;
	}
	public int getA_need() {
		return a_need;
	}
	public void setA_need(int a_need) {
		this.a_need = a_need;
	}
	public int getA_urgency() {
		return a_urgency;
	}
	public void setA_urgency(int a_urgency) {
		this.a_urgency = a_urgency;
	}
	public int getA_status() {
		return a_status;
	}
	public void setA_status(int a_status) {
		this.a_status = a_status;
	}
	public String getUa_date() {
		return ua_date;
	}
	public void setUa_date(String ua_date) {
		this.ua_date = ua_date;
	}
	public int getA_type() {
		return a_type;
	}
	public void setA_type(int a_type) {
		this.a_type = a_type;
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
	public int getS_number() {
		return s_number;
	}
	public void setS_number(int s_number) {
		this.s_number = s_number;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}

	
	
	public int getJob_code() {
		return job_code;
	}
	public void setJob_code(int job_code) {
		this.job_code = job_code;
	}
	@Override
	public String toString() {
		return "JobAdsDTO [a_number=" + a_number + ", a_date=" + a_date + ", a_time=" + a_time + ", a_wage=" + a_wage
				+ ", a_urgency=" + a_urgency + ", a_status=" + a_status + ", ua_date=" + ua_date + ", a_type=" + a_type
				+ ", m_id=" + m_id + ", r_code=" + r_code + ", s_number=" + s_number + ", del=" + del + ", job_code="
				+ job_code + "]";
	}
	
	
	

}
