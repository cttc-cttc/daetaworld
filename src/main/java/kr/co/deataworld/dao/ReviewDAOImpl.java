package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.JobAdsDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.reviewMapper";

	@Override
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsCompleted", m_id);
	}

}
