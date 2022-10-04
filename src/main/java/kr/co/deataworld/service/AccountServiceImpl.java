package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;



import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.deataworld.dao.AccountDAO;
import kr.co.deataworld.dto.MemberDTO;

@Service
public class AccountServiceImpl implements AccountService{
	private static final String String = null;
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
	public String getAreaCode(Map<String, String> addrParam) {
		// TODO Auto-generated method stub
		return dao.getAreaCode(addrParam);
	}
	
	@Override
	public Map<String, Object> login(Map<String, String> loginInfo) {
		// TODO Auto-generated method stub
		return dao.login(loginInfo);
	}
	
	
	
	
	// 아이디 찾기
	
	@Override
	public String findId(String m_email) {
			
		 return dao.findId(m_email);
	
}
	
//	@Override
//	public List<MemberDTO> findId(String m_email)throws Exception{
//		return dao.findId(m_email);
//	}
	
	@Override
	public int findEmCheck(String m_email)throws Exception{
		return dao.findEmCheck(m_email);
	}
	@Override
	public int findIdCheck(String m_id)throws Exception{
		return dao.findIdCheck(m_id);
	}
	
	
	
	@Override
	public int findPwCheck(MemberDTO memberDTO)throws Exception{
		return dao.findPwCheck(memberDTO);
	}

	@Override
	public Map<String, Object> findPw(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.findPw(map); 
	}

	
	
}