package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;

public interface ReviewDAO {

//	완료된 공고 목록
	public List<Map<String, Object>> adsCompleted(String m_id) throws Exception;
}
