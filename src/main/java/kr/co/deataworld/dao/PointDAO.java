package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.PointDTO;

public interface PointDAO {
	
//	포인트 조회
	public PointDTO point(String id) throws Exception;
	
//	적립포인트 내역 조회
	public List<EarnedPointDTO> earnedPoint(String id) throws Exception;
	
//	차감포인트 내역 조회
	public List<DeductedPointDTO> deductedPoint(String id) throws Exception;
	
//	포인트 차감
	public int pointDeduct (Map<String, Object> map) throws Exception;
	
//	포인트 추가
	public int pointAdd(Map<String, Object> map) throws Exception;
}
