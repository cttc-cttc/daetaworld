package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewDAO {
	
//	리뷰 작성
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
//	작성된 리뷰 내용 확인
	public Map<String, Object>wroteDetail(int a_number) throws Exception;

	
//	작성후 리뷰 내용 확인	
	public Map<String, Object>writtenDetail(int w_number) throws Exception;

//	완료된 공고 목록
	public List<Map<String, Object>> r_adsCompleted(String m_id) throws Exception;
	
//	리뷰 작성된 공고 목록
	public List<Map<String, Object>>r_wroteReviews(String m_id) throws Exception;
	
//	리뷰 작성된 공고 목록
	public List<Map<String, Object>>r_writtenReviews(String m_id) throws Exception;
}
