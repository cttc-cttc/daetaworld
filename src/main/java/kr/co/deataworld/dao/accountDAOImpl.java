package kr.co.deataworld.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class accountDAOImpl implements accountDAO{
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.accountMapper";

	@Override
	public int r_nickChk(String r_nick) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".r_nickChk", r_nick);
	}

}
