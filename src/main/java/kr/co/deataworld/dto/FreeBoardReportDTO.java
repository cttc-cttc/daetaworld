package kr.co.deataworld.dto;
/*
 * 관리자화면 - 자유게시판 글 신고 처리를 위해 아래 테이블 4개를 조인
 * 게시판(board) 테이블A
 * 글 신고(report) 테이블B
 * 신고 코드(report_code) 테이블C
 * 회원(member) 테이블D
 */
public class FreeBoardReportDTO {
	private String b_title;
	private String m_id;
	private String b_date;
	private String r_type;
	private int b_number;
	private int re_number;
	private int m_type;
	
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getR_type() {
		return r_type;
	}
	public void setR_type(String r_type) {
		this.r_type = r_type;
	}
	public int getB_number() {
		return b_number;
	}
	public void setB_number(int b_number) {
		this.b_number = b_number;
	}
	public int getRe_number() {
		return re_number;
	}
	public void setRe_number(int re_number) {
		this.re_number = re_number;
	}
	public int getM_type() {
		return m_type;
	}
	public void setM_type(int m_type) {
		this.m_type = m_type;
	}
	@Override
	public String toString() {
		return "FreeBoardReportDTO [b_title=" + b_title + ", m_id=" + m_id + ", b_date=" + b_date + ", r_type=" + r_type
				+ ", b_number=" + b_number + ", re_number=" + re_number + ", m_type=" + m_type + "]";
	}
}
