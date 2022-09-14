package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.EmployeeDAO;
import kr.co.deataworld.dto.MemberDTO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeDAO dao;
	
	@Override //내 정보 불러오기 (구직자)
	public MemberDTO myInfo() throws Exception {
		return dao.myInfo();
	}

	@Override //닉네임 변경시 중복검사(구직자)
	public int m_nick(String m_nick) throws Exception {
		return dao.m_nick(m_nick);
	}


	@Override //내 정보 수정하기 (구직자)
	public int m_myInfoUpdate(MemberDTO memberDTO)throws Exception {
		// TODO Auto-generated method stub
		return dao.m_myInfoUpdate(memberDTO);
	}

}
