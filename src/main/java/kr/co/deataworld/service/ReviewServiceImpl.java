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

	public int r_reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_reviewRegister(reviewDTO);
	}

	@Override
	public Map<String, Object> wroteDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.wroteDetail(a_number);
	}
	
	@Override
	public List<Map<String, Object>> r_adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.r_adsCompleted(m_id);
	}

	@Override //구직자 리뷰 작성하기
	public int e_reviewRegister(ReviewDTO reviewDTO) throws Exception {
		return dao.e_reviewRegister(reviewDTO);
	}
	
	@Override //구직자 내가 작성한 리뷰
	public List<Map<String, Object>> e_writtenReviews(String w_writer) throws Exception {
		return dao.e_writtenReviews(w_writer);
	}

	@Override //구직자 나를 평가한 리뷰
	public List<Map<String, Object>> e_myReview(String id_rated) throws Exception {
		return dao.e_myReview(id_rated);
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

	@Override
	public Map<String, Object> writtenDetail(int w_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.writtenDetail(w_number);
	}

}
