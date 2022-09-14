package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.MainAdsDTO;

public interface JobAdsDAO {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsDTO> mainUrgencyList();

	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsDTO> mainCommonList();

	// 구인목록(일반구인 목록보기)
	public List<JobAdsDTO> listAds();

	// 구인목록(일반구인->상세보기)
	public JobAdsDTO listAllDetail(int a_number);

	// 일반구인페이지-지역 드롭다운 선택
	public List<AreaCodeDTO> selectDropdown();

	// 일반구인페이지-구 드롭다운 선택
	public List<AreaCodeDTO> selectSecond(String select);
}
