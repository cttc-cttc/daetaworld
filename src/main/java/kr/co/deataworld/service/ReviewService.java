package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewService {
	
//	완료된 공고 목록
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception;

<<<<<<< HEAD
//	리뷰 작성
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
//	리뷰 작성된 공고 목록
	public List<Map<String, Object>>writtenReviews(String m_id) throws Exception;
	
//	작성된 리뷰 내용 확인
	public Map<String, Object>reviewDetail(int a_number) throws Exception;
=======
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
>>>>>>> newlee
	
}
