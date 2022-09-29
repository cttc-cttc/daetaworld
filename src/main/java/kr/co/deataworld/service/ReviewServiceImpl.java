package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.ReviewDAO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	ReviewDAO dao;

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewRegister(reviewDTO);
	}

	@Override
	public Map<String, Object> reviewDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewDetail(a_number);
	}
	
	@Override
	public List<Map<String, Object>> r_adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_adsCompleted(m_id);
	}

	@Override
	public List<Map<String, Object>> r_wroteReviews(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_wroteReviews(m_id);
	}

	@Override
	public List<Map<String, Object>> r_writtenReviews(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_writtenReviews(m_id);
	}

}
