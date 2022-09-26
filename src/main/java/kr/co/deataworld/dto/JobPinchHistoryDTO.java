package kr.co.deataworld.dto;
//가게명	날짜	시간	시급	급구	상태
public class JobPinchHistoryDTO {
	
	private String s_name;
	private String a_date;
	private String a_time;
	private String a_wage;
	private String a_urgency;
	private String a_status;
	
	
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
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
	
	
	@Override
	public String toString() {
		return "JobPinchHistoryDTO [s_name=" + s_name + ", a_date=" + a_date + ", a_time=" + a_time + ", a_wage="
				+ a_wage + ", a_urgency=" + a_urgency + ", a_status=" + a_status + "]";
	}
	
	
	
	
	
	
	
	
}
