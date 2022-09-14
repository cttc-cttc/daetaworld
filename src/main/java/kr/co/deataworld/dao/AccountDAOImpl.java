package kr.co.deataworld.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.accountMapper";

	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".m_nickChk", m_nick);
	}

	@Inject
	private SqlSession session;
	

		
	@Override
	public void register(MemberDTO dto) throws Exception{
		sqlSession.insert("memberMapper.register", dto);
		
	}



	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
