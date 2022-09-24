package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCountryCriteria;
import kr.co.deataworld.dto.MainAdsDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

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
	public List<JobAdsDTO> listAds(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listAds(cri);
	}

	@Override
	public JobAdsDTO listAllDetail(int s_number) {
		// TODO Auto-generated method stub
		return dao.listAllDetail(s_number);
	}

	
	@Override
	public Map<String, Object> listDetail(int s_number) {
		// TODO Auto-generated method stub
		return dao.listDetail(s_number);
	}

	@Override
	public int countJobAdsList() {
		// TODO Auto-generated method stub
		return dao.countJobAdsList();
	}

	@Override
	public List<JobAdsDTO> JobAdsSearch(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return dao.JobAdsSearch(map);
	}

	@Override
	public List<AreaCodeDTO> areaSearch(String area){
		// TODO Auto-generated method stub
		return dao.areaSearch(area);
	}

	@Override
	public List<AreaCodeDTO> selectDropdown(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectDropdown(map);
	}

	

	

	@Override
	public List<JobAdsDTO> listUrgency(JobAdsCriteria cri) {
		
		return dao.listUrgency(cri);
	}

	@Override
	public List<JobAdsDTO> listCountry(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listCountry(cri);
	}

	
	
}
