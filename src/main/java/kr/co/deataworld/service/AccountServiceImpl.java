package kr.co.deataworld.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AccountDAO;
import kr.co.deataworld.dto.MemberDTO;

@Service
public class AccountServiceImpl implements AccountService{
	@Inject AccountDAO dao;	
	
	public void register(MemberDTO dto) throws Exception {
		 dao.register(dto);
	
	}
	
	
	
	

	@Override
	public int m_idChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.m_idChk(m_id);
	}

	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
