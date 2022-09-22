package kr.co.deataworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Autowired
	SqlSession sql;
	
	String nameSpace = "kr.co.deataworld.accountMapper";

	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".m_nickChk", m_nick);
	}
		
	@Override
	public int m_idChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".m_idChk", m_id);
	}

	@Override
	public int eRegister(MemberDTO member) {
		// TODO Auto-generated method stub
		return sql.insert(nameSpace + ".eRegister", member);
	}
}
