package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.entity.CommonAdsEntity;

@Repository
public class JobAdsDAOImpl implements JobAdsDAO {

	private final static String NAMESPACE = "kr.co.deataworld.jobAds";
	
	@Inject
	SqlSession sql;
	
	@Override
	public List<CommonAdsEntity> mainCommonList() {
		return sql.selectList(NAMESPACE + ".main_common_ads");
	}
	
}
