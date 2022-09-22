package kr.co.deataworld.service;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AccountDAO;
import kr.co.deataworld.dto.MemberDTO;

@Service
public class AccountServiceImpl implements AccountService{
	@Inject AccountDAO dao;	
	
	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return dao.m_nickChk(m_nick);
	}
	
	@Override
	public int m_idChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.m_idChk(m_id);
	}

	@Override
	public int register(MemberDTO member) {
		// TODO Auto-generated method stub
		return dao.register(member);
	}

	@Override
	public Map<String, Object> login(Map<String, String> loginInfo) {
		// TODO Auto-generated method stub
		return dao.login(loginInfo);
	}
}
