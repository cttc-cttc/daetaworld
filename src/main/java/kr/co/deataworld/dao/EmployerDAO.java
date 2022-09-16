package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

<<<<<<< HEAD
import kr.co.deataworld.dto.JobAdsDTO;
=======

>>>>>>> newb
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface EmployerDAO {
//	내 정보보기
	public MemberDTO myInfo(String id) throws Exception;	
	
//	내 정보수정
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception; 
	
//	주변 구직자 확인
	public List<MemberDTO> check_employees(String m_id) throws Exception;
	
//	등록한 가게 목록보기
	public List<ShopInfoDTO> shopManagement(String id) throws Exception;	
	
//	등록한 가게 정보보기
	public ShopInfoDTO shopInfo(String s_name) throws Exception;
	
//	공고등록한 가게 목록보기
	public List<Map<String, Object>> adsHistory(String id) throws Exception;
	
//	가게 정보보기
	public Map<String, Object> adsRegistered(int a_number) throws Exception;
	
//	등록 중인 가게 목록보기
	public List<Map<String, Object>> adsPending(String id) throws Exception;
	
//	지원받은 가게 목록보기
	public List<Map<String, Object>> adsApplied(String id) throws Exception;
	
//	지원자 목록보기
	public List<Map<String, Object>> candidates(int a_number) throws Exception;
	
//	지원자 정보보기
	public Map<String, Object> canDetail(Map<String, Object> map) throws Exception;
	
//	지원자 수락 및 대기
	public int applyAccept(String m_id) throws Exception;
	
//	지원자 거절
	public int applyDeny(String m_id) throws Exception;
	
//	만료된 가게 목록보기
	public List<Map<String,Object>> adsExpired(String id) throws Exception;

}
