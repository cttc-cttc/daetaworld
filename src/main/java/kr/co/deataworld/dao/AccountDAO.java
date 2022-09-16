package kr.co.deataworld.dao;

import kr.co.deataworld.dto.MemberDTO;

public interface AccountDAO {
	//닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;
	
	public MemberDTO login(MemberDTO dto) throws Exception;
	
	//회원가입
	public MemberDTO register(MemberDTO dto) throws Exception;
	
}
