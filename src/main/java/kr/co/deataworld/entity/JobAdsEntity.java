package kr.co.deataworld.entity;
/*
 * Table: job_ads
Columns:
a_number varchar(10) PK 
a_date varchar(50) 
a_time varchar(50) 
a_wage varchar(10) 
a_urgency varchar(1) 
a_status varchar(1) 
ua_date datetime 
r_id varchar(20) 
r_code varchar(2)
 */
public class JobAdsEntity {
	private String a_number;  // 공고번호
	private String a_date;	  // 날짜
	private String a_time;	  // 시간
	private String a_wage;	  // 시급
	private String a_urgency; // 급구
	private String a_status;  // 상태
	private String ua_date;	  // 올린 시간
	private int a_type;		  // 공고 구분
	private String r_id;	  // 구인자ID
	private String r_code;	  // 신고 코드
	
	public String getA_number() {
		return a_number;
	}
	public void setA_number(String a_number) {
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
	public String getA_wage() {
		return a_wage;
	}
	public void setA_wage(String a_wage) {
		this.a_wage = a_wage;
	}
	public String getA_urgency() {
		return a_urgency;
	}
	public void setA_urgency(String a_urgency) {
		this.a_urgency = a_urgency;
	}
	public String getA_status() {
		return a_status;
	}
	public void setA_status(String a_status) {
		this.a_status = a_status;
	}
	public String getUa_date() {
		return ua_date;
	}
	public void setUa_date(String ua_date) {
		this.ua_date = ua_date;
	}
	public void setA_type(int a_type) {
		this.a_type = a_type;
	}
	public int getA_type() {
		return a_type;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_code() {
		return r_code;
	}
	public void setR_code(String r_code) {
		this.r_code = r_code;
	}
	@Override
	public String toString() {
		return "JobAdsEntity [a_number=" + a_number + ", a_date=" + a_date + ", a_time=" + a_time + ", a_wage=" + a_wage
				+ ", a_urgency=" + a_urgency + ", a_status=" + a_status + ", ua_date=" + ua_date + ", a_type=" + a_type
				+ ", r_id=" + r_id + ", r_code=" + r_code + "]";
	}
}
