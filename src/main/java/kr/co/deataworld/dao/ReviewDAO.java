package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.ReviewDTO;

public interface ReviewDAO {

//	완료된 공고 목록
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception;
	
	public int reviewRegister(ReviewDTO reviewDTO) throws Exception;
	
	
}
