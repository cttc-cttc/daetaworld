package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "kr.co.deataworld.reviewMapper";

	@Override
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".adsCompleted", m_id);
	}

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".reviewRegister", reviewDTO);
	}

	@Override
	public List<Map<String, Object>> writtenReviews(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".writtenReviews", m_id);
	}

	@Override
	public Map<String, Object> reviewDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".reviewDetail", a_number);
	}

	
}
