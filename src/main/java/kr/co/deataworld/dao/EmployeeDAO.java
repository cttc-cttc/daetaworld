package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.MemberDTO;

public interface EmployeeDAO {
	//내 정보 불러오기
	public MemberDTO myInfo()throws Exception;
	
	//닉네임 변경시 중복검사하기
	public int m_nick(String m_nick)throws Exception;
	

	//내 정보 수정하기
	public int m_myInfoUpdate(MemberDTO memberDTO);
}
