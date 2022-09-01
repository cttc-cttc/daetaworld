package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.entity.JobAdsEntity;

@Service
public class JobAdsServiceImpl implements JobAdsService {

	@Inject
	JobAdsDAO dao;
	
	@Override
	public List<JobAdsEntity> mainCommonList() {
		return dao.mainCommonList();
	}
	
	@Override
	public int insert(JobAdsEntity jobAds) {
		return dao.insert(jobAds);
	}
	
}
