package kr.co.deataworld.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AccountDAO;
import kr.co.deataworld.dto.MemberDTO;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountDAO dao;	

	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return dao.m_nickChk(m_nick);
	}
	
	public MemberDTO register(MemberDTO dto) throws Exception {
		return dao.register(dto);
		// TODO Auto-generated method stub
		
	}

}
