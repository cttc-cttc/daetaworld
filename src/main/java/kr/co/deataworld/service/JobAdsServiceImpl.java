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
import kr.co.deataworld.dto.ShopInfoDTO;

@Service
public class JobAdsServiceImpl implements JobAdsService {

	@Inject
	JobAdsDAO dao;
	
	@Override
	public List<Map<String, Object>> mainUrgencyList() {
		return dao.mainUrgencyList();
	}
	
	@Override
	public List<Map<String, Object>> mainCommonList() {
		return dao.mainCommonList();
	}

	

	@Override
	public JobAdsDTO listAllDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return dao.listAllDetail(chk);
	}

	
	

	@Override
	public int countJobAdsList() {
		// TODO Auto-generated method stub
		return dao.countJobAdsList();
	}

	

	@Override
	public List<JobAdsDTO> favoriteSearch(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return dao.favoriteSearch(map);
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

	@Override
	public List<Map<String, Object>> listAds(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listAds(cri);
	}

	@Override
	public Map<String, Object> listDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return dao.listDetail(chk);
	}

	@Override
	public List<Map<String, Object>> listUrgency(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listUrgency(cri);
	}

	@Override
	public List<Map<String, Object>> listCountry(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listCountry(cri);
	}

	@Override
	public List<Map<String, Object>> listJobAdsSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.listJobAdsSearch(map);
	}


	
}
