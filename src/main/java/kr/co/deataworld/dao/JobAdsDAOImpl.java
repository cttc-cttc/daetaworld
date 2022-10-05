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
import kr.co.deataworld.dto.ShopInfoDTO;

@Repository
public class JobAdsDAOImpl implements JobAdsDAO {

	private final static String NAMESPACE = "kr.co.deataworld.jobAds";

	@Inject
	SqlSession sql;

	@Override
	public List<Map<String, Object>> mainUrgencyList() {
		return sql.selectList(NAMESPACE + ".main_urgency_ads");
	}

	@Override
	public List<Map<String, Object>> mainCommonList() {
		return sql.selectList(NAMESPACE + ".main_common_ads");
	}

	@Override // 로그인 상태 아닐때 구인공고 보기
	public Map<String, Object> nonMember(int a_number) {
		return sql.selectOne(NAMESPACE + ".nonMember", a_number);
	}

	@Override
	public JobAdsDTO listAllDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE + ".listAllDetail", chk);
	}

	

	

	
	@Override
	public int countJobAdsList() {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE +".countJobAdsList");
	}

	
	
	@Override
	public List<JobAdsDTO> favoriteSearch(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE +".favoriteSearch", map);
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

	@Override
	public List<String> getJob1() {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE +".getJob1");
	}

	@Override
	public List<Map<String, Object>> getJob2(String j_type1) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".getJob2", j_type1);
	}

	@Override
	public List<Map<String, Object>> listAds(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listAds", cri);
	}

	@Override
	public Map<String, Object> listDetail(Map<String, Object> chk) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE + ".listDetail", chk);
	}

	@Override
	public List<Map<String, Object>> listUrgency(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listUrgency", cri);
	}

	@Override
	public List<Map<String, Object>> listCountry(JobAdsCriteria cri) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE + ".listCountry", cri);
	}

	//구인 상단 검색
	@Override
	public List<Map<String, Object>> listJobAdsSearch(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE +".listJobAdsSearch", map);
	}

	@Override
	public List<Map<String, Object>> findAll() {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACE +".findAll");
	}
	
	
}
