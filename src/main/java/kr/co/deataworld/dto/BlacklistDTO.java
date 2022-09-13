package kr.co.deataworld.dto;

import java.util.ArrayList;
import java.util.Arrays;

/*
 * 관리자화면 블랙리스트 조회 시 필요한 테이블 4개 조인
 * 회원(member) 테이블A
 * 댓글 신고(comments_report) 테이블B
 * 댓글(comments) 테이블C
 * 신고 코드(report_code) 테이블D
 */
public class BlacklistDTO {
	private String m_id;	// A.회원 ID
	private String m_nick;	// A.회원 닉네임
	private String m_regdate;	// A.회원 가입날짜
	private String r_types;	// D.신고사유(신고타입,신고타입,신고타입) 형식
	private String c_numbers;	// C.댓글 번호(댓글번호,댓글번호,댓글번호) 형식
	private String[] r_type;	// r_types를 split으로 분할해서 저장한 배열
	private String[] c_number;	// c_numbers를 split으로 분할해서 저장한 배열
	private ArrayList<ArrayList<String>> rType_cNumbers; // r_type과 c_number의 원소 하나씩 같이 저장한 배열
	private int m_number;	// A.회원 번호
	private int m_type;		// A.회원 구분
	
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
	public String getM_regdate() {
		return m_regdate;
	}
	public void setM_regdate(String m_regdate) {
		this.m_regdate = m_regdate;
	}
	public String getR_types() {
		return r_types;
	}
	public void setR_types(String r_types) {
		this.r_types = r_types;
	}
	public String getC_numbers() {
		return c_numbers;
	}
	public void setC_numbers(String c_numbers) {
		this.c_numbers = c_numbers;
	}
	public String[] getR_type() {
		return r_type;
	}
	public void setR_type(String[] r_type) {
		this.r_type = r_type;
	}
	public String[] getC_number() {
		return c_number;
	}
	public void setC_number(String[] c_number) {
		this.c_number = c_number;
	}
	public ArrayList<ArrayList<String>> getrType_cNumbers() {
		return rType_cNumbers;
	}
	public void setrType_cNumbers(ArrayList<ArrayList<String>> rType_cNumbers) {
		this.rType_cNumbers = rType_cNumbers;
	}
	public int getM_number() {
		return m_number;
	}
	public void setM_number(int m_number) {
		this.m_number = m_number;
	}
	public int getM_type() {
		return m_type;
	}
	public void setM_type(int m_type) {
		this.m_type = m_type;
	}
	@Override
	public String toString() {
		return "BlacklistDTO [m_id=" + m_id + ", m_nick=" + m_nick + ", m_regdate=" + m_regdate + ", r_types=" + r_types
				+ ", c_numbers=" + c_numbers + ", r_type=" + Arrays.toString(r_type) + ", c_number="
				+ Arrays.toString(c_number) + ", rType_cNumbers=" + rType_cNumbers + ", m_number=" + m_number
				+ ", m_type=" + m_type + "]";
	}
}
