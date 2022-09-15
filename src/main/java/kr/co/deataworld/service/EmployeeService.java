package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.MemberDTO;


public interface EmployeeService {
	//내 정보 불러오기
	public MemberDTO myInfo()throws Exception;
	
	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	
	
	
	
}
