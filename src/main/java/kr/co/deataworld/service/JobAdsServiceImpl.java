package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.dto.MainAdsDTO;

@Service
public class JobAdsServiceImpl implements JobAdsService {

	@Inject
	JobAdsDAO dao;
	
	@Override
	public List<MainAdsDTO> mainUrgencyList() {
		return dao.mainUrgencyList();
	}
	
	@Override
	public List<MainAdsDTO> mainCommonList() {
		return dao.mainCommonList();
	}
	
}
