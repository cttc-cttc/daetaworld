package kr.co.deataworld.dto;
/*
 * 메인화면의 긴급구인 리스트, 일반구인 리스트를 표시하는 데 사용
 * 
 * 아래 4개 테이블 중 필요한 것들만 inner join
 * 구인공고(job_ads) 테이블A
 * 가게&농어촌 정보(shop_info) 테이블B
 * 회원(member) 테이블C
 * 후기(review) 테이블D
 */
public class MainAdsDTO {
	private String a_number;// A구인공고.공고번호
	private String a_wage;// A구인공고.시급
	private String a_time;// A구인공고.시간
	private String uptime;// A구인공고.올린시간 계산값
	private String s_name;// B가게정보.가게명
	private String s_address1;// B가게정보.가게 주소1
	private String s_picture;// B가게정보.가게 사진
	private String s_tag1;// B가게정보.태그1
	private String s_tag2;// B가게정보.태그2
	private String s_tag3;// B가게정보.태그3
	private String s_tag4;// B가게정보.태그4
	private String s_tag5;// B가게정보.태그5
	private String m_nick;// C회원.닉네임
	private String w_rate;// D후기.평점
	
	public String getA_number() {
		return a_number;
	}
	public void setA_number(String a_number) {
		this.a_number = a_number;
	}
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
	public String getS_address1() {
		return s_address1;
	}
	public void setS_address1(String s_address1) {
		this.s_address1 = s_address1;
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
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public String getW_rate() {
		return w_rate;
	}
	public void setW_rate(String w_rate) {
		this.w_rate = w_rate;
	}
	@Override
	public String toString() {
		return "MainAdsEntity [a_number=" + a_number + ", a_wage=" + a_wage + ", a_time=" + a_time + ", uptime="
				+ uptime + ", s_name=" + s_name + ", s_address1=" + s_address1 + ", s_picture=" + s_picture + ", s_tag1="
				+ s_tag1 + ", s_tag2=" + s_tag2 + ", s_tag3=" + s_tag3 + ", s_tag4=" + s_tag4 + ", s_tag5=" + s_tag5
				+ ", m_nick=" + m_nick + ", w_rate=" + w_rate + "]";
	}
}
