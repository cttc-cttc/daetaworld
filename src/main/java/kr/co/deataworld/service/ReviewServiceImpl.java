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
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsCompleted(m_id);
	}

	@Override
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewRegister(reviewDTO);
	}



}
