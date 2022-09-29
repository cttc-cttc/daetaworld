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
	public List<Map<String, Object>>e_adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".e_adsCompleted", m_id);
	}

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".reviewRegister", reviewDTO);
	}

	@Override //내가 작성한 리뷰
	public List<Map<String, Object>> e_writtenReviews(String w_writer) throws Exception {
		return sqlSession.selectList(namespace + ".e_writtenReviews", w_writer);
	}

	@Override //나를 평가한 리뷰
	public List<Map<String, Object>> e_myReview(String id_rated) throws Exception {
		return sqlSession.selectList(namespace + ".e_myReview", id_rated);
	}

	@Override
	public Map<String, Object> reviewDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".reviewDetail", a_number);
	}

	
}
