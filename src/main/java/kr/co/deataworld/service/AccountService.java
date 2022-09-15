package kr.co.deataworld.service;

import kr.co.deataworld.dto.MemberDTO;

public interface AccountService {
	//닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;

	public static void register(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
