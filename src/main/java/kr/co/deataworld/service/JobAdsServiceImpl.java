package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
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

	@Override
	public List<JobAdsDTO> listAds() {
		// TODO Auto-generated method stub
		return dao.listAds();
	}

	@Override
	public JobAdsDTO listAllDetail(int a_number) {
		// TODO Auto-generated method stub
		return dao.listAllDetail(a_number);
	}

	@Override
	public List<AreaCodeDTO> selectDropdown() {
		// TODO Auto-generated method stub
		return dao.selectDropdown();
	}

	@Override
	public List<AreaCodeDTO> selectSecond(String select) {
		// TODO Auto-generated method stub
		return dao.selectSecond(select);
	}
	
}
