package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.JobCountryCriteria;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface JobAdsService {
	// 메인화면 - 긴급구인 리스트 6개
	public List<Map<String, Object>> mainUrgencyList();

	// 메인화면 - 일반구인 리스트 6개
	public List<Map<String, Object>> mainCommonList();

	// 구인목록(일반구인)
	public List<Map<String,Object>> listAds(JobAdsCriteria cri);

	// 급구목록보기
	public List<Map<String, Object>>listUrgency(JobAdsCriteria cri);

	// 구인목록(구인-농어촌)
	public List<Map<String, Object>>listCountry(JobAdsCriteria cri);
	//구인 지역,직종 검색(상단)
	public List<Map<String, Object>> listJobAdsSearch(Map<String , Object>map);

	// 일반/긴급-글갯수
	public int countJobAdsList();

	
	
	// 직업추천 전체 구인목록검색
	public List<JobAdsDTO> favoriteSearch(Map<Object, Object> map);

	// 로그인 상태 아닐때 구인상세 보기
	public Map<String, Object> nonMember(int a_number);

	// 구인목록(일반구인->상세보기)
	public JobAdsDTO listAllDetail(Map<String, Object> chk);

	

	// 구인상세페이지
	public  Map<String, Object> listDetail(Map<String, Object> chk);

	
	// 지역 카테고리1 목록
	public List<String> getAreaName1();

	// 지역 카테고리2 목록
	public List<Map<String, String>> getAreaName2(String a_name1);

	// 직종 카테고리1 목록
	public List<String> getJob1();

	// 직종 카테고리2 목록
	public List<Map<String, Object>> getJob2(String j_type1);
//	상단 필터
//	public List<Map<String, Object>> findAll();//전체목록
	
}
