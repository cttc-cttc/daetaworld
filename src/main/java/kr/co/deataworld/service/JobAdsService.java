package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.MainAdsDTO;

public interface JobAdsService {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsDTO> mainUrgencyList();
	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsDTO> mainCommonList();
}
