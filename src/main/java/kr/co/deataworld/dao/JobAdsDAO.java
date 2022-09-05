package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.entity.MainAdsEntity;

public interface JobAdsDAO {
	// 메인화면 - 긴급구인 리스트 6개
	public List<MainAdsEntity> mainUrgencyList();
	// 메인화면 - 일반구인 리스트 6개
	public List<MainAdsEntity> mainCommonList();
}
