package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewDAO {

//	완료된 공고 목록
	public List<Map<String, Object>> e_adsCompleted(String m_id) throws Exception;
	
//	리뷰 작성
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
//	내가 작성한 리뷰
	public List<Map<String, Object>> e_writtenReviews(String w_writer) throws Exception;
	
//	나를 평가한 리뷰
	public List<Map<String, Object>> e_myReview(String id_rated) throws Exception;
	
//	작성된 리뷰 내용 확인
	public Map<String, Object> reviewDetail(int a_number) throws Exception;
}
