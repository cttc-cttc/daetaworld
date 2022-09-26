package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.JobCountryCriteria;
import kr.co.deataworld.dto.MainAdsDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

@Repository
public class JobAdsDAOImpl implements JobAdsDAO {

	private final static String NAMESPACE = "kr.co.deataworld.jobAds";

	@Inject
	SqlSession sql;

	@Override
	public List<MainAdsDTO> mainUrgencyList() {
		return sql.selectList(NAMESPACE + ".main_urgency_ads");
	}

	@Override
	public List<MainAdsDTO> mainCommonList() {
		return sql.selectList(NAMESPACE + ".main_common_ads");
	}

	@Override
	public List<JobAdsDTO> listAds(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listAds", cri);
	}

	@Override
	public JobAdsDTO listAllDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE + ".listAllDetail", chk);
	}

	

	@Override
	public Map<String, Object> listDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE + ".listDetail", chk);
	}

	
	@Override
	public int countJobAdsList() {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE +".countJobAdsList");
	}

	@Override
	public List<JobAdsDTO> JobAdsSearch(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE +".JobAdsSearch", map);
	}

	@Override
	public List<AreaCodeDTO> areaSearch(String area) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".areaSearch", area);
	}

	@Override
	public List<AreaCodeDTO> selectDropdown(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".selectDropdown", map);
	}

	

	

	@Override
	public List<JobAdsDTO> listUrgency(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listUrgency", cri);
	}

	@Override
	public List<JobAdsDTO> listCountry(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listCountry", cri);
	}

	@Override
	public List<String> getAreaName1() {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".getAreaName1");
	}

	@Override
	public List<Map<String, String>> getAreaName2(String a_name1) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".getAreaName2", a_name1);
	}

	
}
