package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.entity.JobAdsEntity;

public interface JobAdsService {
	// 메인화면 - 일반구인 리스트 조회
	public List<JobAdsEntity> mainCommonList();
	
	// 구인공고 등록
	public int insert(JobAdsEntity jobAds);
}
