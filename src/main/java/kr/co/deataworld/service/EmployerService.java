package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCodeDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface EmployerService {
//	내 정보보기
	public MemberDTO myInfo(String m_id) throws Exception;
	
//	내 정보수정
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception; 
	
//	공고 등록
	public int adsRegister(Map<String, Object> map) throws Exception;
	
//	주변 구직자 확인 전 가게 목록
	public List<Map<String, Object>> checkEmployees(String m_id) throws Exception;
	
//	가게의 주변 구직자 확인
	public List<MemberDTO> nearCandidates(String address) throws Exception;
	
//	가게 주변 구직자 정보
	public Map<String, Object> nearCanDetail(Map<String, Object> map) throws Exception;
		
//	등록한 가게 목록보기
	public List<ShopInfoDTO> shopManagement(String m_id) throws Exception;
	
//	등록한 가게 정보보기
	public ShopInfoDTO shopInfo(String s_name) throws Exception;
	
//	공고등록한 가게 목록보기
	public List<Map<String, Object>> adsHistory(String m_id) throws Exception;
	
//	가게 정보보기
	public Map<String, Object> adsRegistered(int a_number) throws Exception;
	
//	가게 정보 업데이트
	public int adsUpdate(Map<String, Object> map) throws Exception;
	
//	등록 중인 가게 목록보기
	public List<Map<String, Object>> adsPending(String m_id) throws Exception;
	
//	지원받은 가게 목록보기
	public List<Map<String, Object>> adsApplied(String m_id) throws Exception;
	
//	지원자 목록보기
	public List<Map<String, Object>> candidates(int a_number) throws Exception;
	
//	지원자 정보보기
	public Map<String, Object> canDetail(Map<String, Object> map) throws Exception;
	
//	알바 선요청 후 대기
	public int applyRequest(Map<String, Object> map) throws Exception;
	
//	지원자 수락 후 대기
	public int applyAccept(String m_id) throws Exception;
	
//	지원자 거절
	public int applyDeny(String m_id) throws Exception;
	
//	만료된 가게 목록보기
	public List<Map<String,Object>> adsExpired(String m_id) throws Exception;
	
//	직종 목록 받아오기
	public List<JobCodeDTO> jobList()throws Exception;
	
}
