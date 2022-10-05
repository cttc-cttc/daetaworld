package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.PointDTO;
import kr.co.deataworld.util.PageProcess;

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
	
//	특정 회원의 적립 포인트 전체 수
	public int earnedPointCnt(String id);
	
//	적립 포인트 페이징 처리
	public List<EarnedPointDTO> earnedPointPage(Map<String, Object> map);
	
//	특정 회원의 차감 포인트 전체 수
	public int deductedPointCnt(String id);
	
//	차감 포인트 페이징 처리
	public List<DeductedPointDTO> deductedPointPage(Map<String, Object> map);
}
