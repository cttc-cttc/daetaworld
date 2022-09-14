package kr.co.deataworld.dto;
/*
 * 관리자화면 구인공고 신고정보 조회를 위해 아래 4개 테이블 조인
 * 구인공고(job_ads) 테이블A
 * 가게정보(shop_info) 테이블B
 * 글 신고(report) 테이블C
 * 신고 코드(report_code) 테이블D
 */
public class JobAdsReportDTO {
	private String s_name;
	private String m_id;
	private String s_date;
	private String r_type;
	private int a_number;
	private int re_number;
	
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getR_type() {
		return r_type;
	}
	public void setR_type(String r_type) {
		this.r_type = r_type;
	}
	public int getA_number() {
		return a_number;
	}
	public void setA_number(int a_number) {
		this.a_number = a_number;
	}
	public int getRe_number() {
		return re_number;
	}
	public void setRe_number(int re_number) {
		this.re_number = re_number;
	}
	@Override
	public String toString() {
		return "JobAdsReportDTO [s_name=" + s_name + ", m_id=" + m_id + ", s_date=" + s_date + ", r_type=" + r_type
				+ ", a_number=" + a_number + ", re_number=" + re_number + "]";
	}
}
