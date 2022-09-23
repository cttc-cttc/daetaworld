package kr.co.deataworld.service;

import java.util.Map;

import kr.co.deataworld.dto.MemberDTO;

public interface AccountService {
	// 닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;
	// 아이디 중복검사
	public int m_idChk(String m_id) throws Exception;
	// 회원가입
	public int register(MemberDTO member);
	// 지역코드 생성
	public String getAreaCode(Map<String, String> addrParam);
	// 로그인
	public Map<String, Object> login(Map<String, String> loginInfo);
}
