package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.MemberDTO;

public interface EmployeeDAO {
	//내 정보 불러오기
	public MemberDTO myInfo()throws Exception;

	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO);
}
