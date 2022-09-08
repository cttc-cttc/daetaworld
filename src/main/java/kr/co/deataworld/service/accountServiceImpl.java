package kr.co.deataworld.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.accountDAO;

@Service
public class accountServiceImpl implements accountService{
	@Autowired
	accountDAO dao;	

	@Override
	public int r_nickChk(String r_nick) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_nickChk(r_nick);
	}

}
