package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewCommentsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewService {
	
//	구직자
	
	//  리뷰 작성
		public int e_reviewRegister(ReviewDTO reviewDTO) throws Exception;
	  
	//	내가 작성한 리뷰
		public List<Map<String, Object>> e_writtenReviews(String w_writer) throws Exception;
	
	//	나를 평가한 리뷰
		public List<Map<String, Object>>e_myReview(String id_rated) throws Exception;
		
//	구인자
		
	//  리뷰 작성
		public int r_reviewRegister(ReviewDTO reviewDTO) throws Exception;	
	
	//	완료된 공고 목록
		public List<Map<String, Object>>r_adsCompleted(String m_id) throws Exception;
		
	//	리뷰 작성한 공고 목록
		public List<Map<String, Object>>r_wroteReviews(String m_id) throws Exception;
		
	//	리뷰 작성된 공고 목록
		public List<Map<String, Object>>r_writtenReviews(String m_id) throws Exception;
		
//	공통
	
	//	작성한 리뷰 내용 확인
		public Map<String, Object>wroteDetail(int a_number) throws Exception;
		
	//	작성된 리뷰 내용 확인	
		public Map<String, Object> writtenDetail(int w_number) throws Exception;
		
	// 리뷰 댓글 작성
		public int replyRegister(ReviewCommentsDTO rcDTO) throws Exception;
	
	
}
