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
	public List<Map<String, Object>> e_adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.e_adsCompleted(m_id);
	}

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewRegister(reviewDTO);
	}

	@Override //내가 작성한 리뷰
	public List<Map<String, Object>> e_writtenReviews(String w_writer) throws Exception {
		return dao.e_writtenReviews(w_writer);
	}

	@Override //나를 평가한 리뷰
	public List<Map<String, Object>> e_myReview(String id_rated) throws Exception {
		return dao.e_myReview(id_rated);
	}

	@Override
	public Map<String, Object> reviewDetail(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewDetail(a_number);
	}


}
