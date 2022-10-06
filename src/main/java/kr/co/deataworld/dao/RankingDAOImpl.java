package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RankingDAOImpl implements RankingDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.rankingMapper";

	@Override
	public List<Map<String, Object>> ranking() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".ranking");
	}
	
	

}
