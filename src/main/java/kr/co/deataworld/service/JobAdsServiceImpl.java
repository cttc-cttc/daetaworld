package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
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
	public JobAdsDTO listAllDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return dao.listAllDetail(chk);
	}

	
	@Override
	public Map<String, Object> listDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return dao.listDetail(chk);
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

	@Override
	public List<String> getAreaName1() {
		// TODO Auto-generated method stub
		return dao.getAreaName1();
	}

	@Override
	public List<Map<String, String>> getAreaName2(String a_name1) {
		// TODO Auto-generated method stub
		return dao.getAreaName2(a_name1);
	}

	@Override
	public List<String> getJob1() {
		// TODO Auto-generated method stub
		return dao.getJob1();
	}

	@Override
	public List<Map<String, Object>> getJob2(String j_type1) {
		// TODO Auto-generated method stub
		return dao.getJob2(j_type1);
	}

	
	
}
