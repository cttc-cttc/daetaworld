package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCountryCriteria;
import kr.co.deataworld.dto.MainAdsDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface JobAdsService {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsDTO> mainUrgencyList();

	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsDTO> mainCommonList();

	// 구인목록(일반구인/급구 목록보기)
	public List<JobAdsDTO> listAds(JobAdsCriteria cri);

	// 구인목록(구인-농어촌)
	public List<JobAdsDTO> listCountry(JobCountryCriteria cri1);

	// 일반/긴급-글갯수
	public int countJobAdsList();

	// 농어촌 글갯수
	public int countCountry();

	// 구인목록검색
	public List<JobAdsDTO> JobAdsSearch(Map<Object, Object> map);

	// 지역검색
	public List<AreaCodeDTO> areaSearch(String area);

	// 구인목록(일반구인->상세보기)
	public JobAdsDTO listAllDetail(int s_number);

	// 드롭다운
	public List<AreaCodeDTO> selectDropdown(Map<String, Object> map);

	// 구인상세페이지
	public Map<String, Object> listDetail(int s_number);

}
