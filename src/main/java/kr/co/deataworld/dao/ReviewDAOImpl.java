package kr.co.deataworld.dao;

import java.util.HashMap;
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
	String namespace2 = "kr.co.deataworld.pointMapper";

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		
			// 포인트 적립 및 적립 내역 추가
		  Map<String, Object> map = new HashMap<String, Object>();	  
	      map.put("id", reviewDTO.getW_writer());
	      map.put("point", 500);
	      sqlSession.insert(namespace2 + ".pointAdd", map);
	      sqlSession.insert(namespace2 + ".pointEarned", map);
	      
	      // 후기 작성 후 상태 변화
	      Map<String, Object> map2 = new HashMap<String, Object>(); 
	      map2.put("m_id", reviewDTO.getId_rated());
	      map2.put("a_number", reviewDTO.getA_number());
	      sqlSession.update(namespace + ".updateStatus", map2);

		
		
		return sqlSession.insert(namespace + ".reviewRegister", reviewDTO);
	}

	@Override
	public Map<String, Object> wroteDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".wroteDetail", a_number);
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

	@Override
	public Map<String, Object> writtenDetail(int w_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".writtenDetail", w_number);
	}

	
}
