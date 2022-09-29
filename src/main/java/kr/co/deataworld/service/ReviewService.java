package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewService {

//	리뷰 작성
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
//	작성된 리뷰 내용 확인
	public Map<String, Object>reviewDetail(int a_number) throws Exception;
	
//	완료된 공고 목록
	public List<Map<String, Object>> r_adsCompleted(String m_id) throws Exception;
	
//	리뷰 작성한 공고 목록
	public List<Map<String, Object>>r_wroteReviews(String m_id) throws Exception;
	
//	리뷰 작성된 공고 목록
	public List<Map<String, Object>>r_writtenReviews(String m_id) throws Exception;
}
