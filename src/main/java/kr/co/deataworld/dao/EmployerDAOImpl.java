package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCodeDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

@Repository
public class EmployerDAOImpl implements EmployerDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.employerMapper";
	
//	내 정보보기
	@Override
	public MemberDTO myInfo(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".myInfo", m_id);
	}
	
	@Override
	public int adsRegister(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".adsRegister", map);
	}
	
//	내 정보수정
	@Override
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".myInfoUpdate", employerEntity);
	}
	
	@Override
	public int countryRegister(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(nameSpace + ".countryShopRegister", map);
		int s_number = sqlSession.selectOne(nameSpace + ".getS_number", map);
		map.put("s_number", s_number);
		sqlSession.insert(nameSpace + ".countryAdsRegister", map);
		return 0;
	}
	
	@Override
	public List<Map<String, Object>> checkEmployees(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".checkEmployees", m_id);
	}
	
	@Override
	public List<MemberDTO> nearCandidates(String areaCode) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".nearCandidates", areaCode);
	}
	
	@Override
	public Map<String, Object> nearCanDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".nearCanDetail", map);
	}
	
//	등록한 가게 목록보기
	@Override
	public List<ShopInfoDTO> shopManagement(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".shopManagement", m_id);
	}

	@Override
	public ShopInfoDTO shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".shopInfo", s_name);
	}

	@Override
	public List<Map<String, Object>> adsHistory(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsHistory", m_id);
	}

	@Override
	public Map<String, Object> adsRegistered(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".adsRegistered", a_number);
	}
	
	@Override
	public int adsUpdate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".adsUpdate", map);
	}

	@Override
	public List<Map<String, Object>> adsPending(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsPending", m_id);
	}
	
	@Override
	public List<Map<String, Object>> adsApplied(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsApplied", m_id);
	}
	
	@Override
	public List<Map<String, Object>> adsRequested(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsRequested", m_id);
	}
	
	@Override
	public int cancelRequest(int ja_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(nameSpace + ".cancelRequest", ja_number);
	}
	
	@Override
	public List<Map<String, Object>> candidates(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".candidates", a_number);
	}
	
	@Override
	public Map<String, Object> canDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".canDetail", map);
	}
	
	@Override
	public int applyRequest(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".applyRequest", map);
	}
	
	@Override
	public int applyAccept(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".applyAccept", m_id);
	}
	
	@Override
	public int applyDeny(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".applyDeny", m_id);
	}

	@Override
	public List<Map<String, Object>> adsExpired(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsExpired", m_id);
	}

	@Override
	public List<JobCodeDTO> jobList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".jobList");
	}
	
	@Override
	public int shopInfoUpdate(ShopInfoDTO shopInfo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".shopInfoUpdate", shopInfo);
	}

	@Override
	public int shopRegister(ShopInfoDTO shopInfo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(nameSpace + ".shopRegister", shopInfo);
	}

	@Override
	public int adsDelete(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".adsDelete", a_number);
	}

	@Override
	public int shopDelete(int s_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".shopDelete", s_number);
	}







}
