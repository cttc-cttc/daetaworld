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
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".register", reviewDTO);
	}

	@Override
	public Map<String, Object> reviewDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".reviewDetail", a_number);
	}
	
	@Override
	public List<Map<String, Object>> r_adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".r_adsCompleted", m_id);
	}
	
	@Override
	public List<Map<String, Object>> r_wroteReviews(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".r_wroteReviews", m_id);
	}

	@Override
	public List<Map<String, Object>> r_writtenReviews(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".r_writtenReviews", m_id);
	}

	
}
