package kr.co.deataworld.dao;

import java.util.Map;

import kr.co.deataworld.dto.MemberDTO;

public interface AccountDAO {
	// 닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;
	// 아이디 중복검사
	public int m_idChk(String m_id) throws Exception ; 
	// 회원가입
	public int register(MemberDTO member);
	// 로그인
	public Map<String, Object> login(Map<String, String> loginInfo);
}
