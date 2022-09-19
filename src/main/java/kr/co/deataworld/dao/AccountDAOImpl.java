package kr.co.deataworld.dao;

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
		
	@Override
	public int m_idChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".m_idChk", m_id);
	}
	
	
	
	// 리턴값 아직 못함
	
	@Override
	public MemberDTO register(MemberDTO dto) throws Exception{
		sqlSession.insert("memberMapper.register", dto);
		return null;
		
	}

	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}





	
	
}
