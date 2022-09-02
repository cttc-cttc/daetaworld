package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.entity.CommonAdsEntity;

public interface JobAdsService {
	// 메인화면 - 일반구인 리스트 조회
	public List<CommonAdsEntity> mainCommonList();
}
