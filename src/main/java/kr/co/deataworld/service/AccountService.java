package kr.co.deataworld.service;

import kr.co.deataworld.dto.MemberDTO;

public interface AccountService {
	// 구인자 닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;

	public void register(MemberDTO dto) throws Exception;
}
