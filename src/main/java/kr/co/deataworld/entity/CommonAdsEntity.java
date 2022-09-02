package kr.co.deataworld.entity;
/*
 * 구인공고 테이블A, 가게&농어촌 정보 테이블B, 구인자 테이블C 조인
 */
public class CommonAdsEntity {
	private String a_wage;// A구인공고.시급
	private String a_time;// A구인공고.시간
	private String uptime;// A구인공고.올린시간 계산값
	private String s_name;// B가게정보.가게명
	private String s_address;// B가게정보.가게 주소
	private String s_picture;// B가게정보.가게 사진
	private String s_tag1;// B가게정보.태그1
	private String s_tag2;// B가게정보.태그2
	private String s_tag3;// B가게정보.태그3
	private String s_tag4;// B가게정보.태그4
	private String s_tag5;// B가게정보.태그5
	private String r_name;// C구인자.구인자 이름
	
	public String getA_wage() {
		return a_wage;
	}
	public void setA_wage(String a_wage) {
		this.a_wage = a_wage;
	}
	public String getA_time() {
		return a_time;
	}
	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	public String getUptime() {
		return uptime;
	}
	public void setUptime(String uptime) {
		this.uptime = uptime;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_address() {
		return s_address;
	}
	public void setS_address(String s_address) {
		this.s_address = s_address;
	}
	public String getS_picture() {
		return s_picture;
	}
	public void setS_picture(String s_picture) {
		this.s_picture = s_picture;
	}
	public String getS_tag1() {
		return s_tag1;
	}
	public void setS_tag1(String s_tag1) {
		this.s_tag1 = s_tag1;
	}
	public String getS_tag2() {
		return s_tag2;
	}
	public void setS_tag2(String s_tag2) {
		this.s_tag2 = s_tag2;
	}
	public String getS_tag3() {
		return s_tag3;
	}
	public void setS_tag3(String s_tag3) {
		this.s_tag3 = s_tag3;
	}
	public String getS_tag4() {
		return s_tag4;
	}
	public void setS_tag4(String s_tag4) {
		this.s_tag4 = s_tag4;
	}
	public String getS_tag5() {
		return s_tag5;
	}
	public void setS_tag5(String s_tag5) {
		this.s_tag5 = s_tag5;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	@Override
	public String toString() {
		return "CommonAdsEntity [a_wage=" + a_wage + ", a_time=" + a_time + ", uptime=" + uptime + ", s_name=" + s_name
				+ ", s_address=" + s_address + ", s_picture=" + s_picture + ", s_tag1=" + s_tag1 + ", s_tag2=" + s_tag2
				+ ", s_tag3=" + s_tag3 + ", s_tag4=" + s_tag4 + ", s_tag5=" + s_tag5 + ", r_name=" + r_name + "]";
	}
}
