package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.entity.MainAdsEntity;

public interface JobAdsService {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsEntity> mainUrgencyList();
	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsEntity> mainCommonList();
}
