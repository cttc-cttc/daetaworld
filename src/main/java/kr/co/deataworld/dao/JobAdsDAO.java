package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.MainAdsDTO;

public interface JobAdsDAO {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsDTO> mainUrgencyList();
	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsDTO> mainCommonList();
}
