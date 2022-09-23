package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

@Repository
public class EmployerDAOImpl implements EmployerDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.employerMapper";
	
//	내 정보보기
	@Override
	public MemberDTO myInfo(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".myInfo", id);
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
	public List<Map<String, Object>> checkEmployees(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".checkEmployees", id);
	}
	
	@Override
	public List<MemberDTO> nearCandidates(String address) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".nearCandidates", address);
	}
	
	@Override
	public Map<String, Object> nearCanDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".nearCanDetail", map);
	}
	
//	등록한 가게 목록보기
	@Override
	public List<ShopInfoDTO> shopManagement(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".shopManagement", id);
	}

	@Override
	public ShopInfoDTO shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".shopInfo", s_name);
	}

	@Override
	public List<Map<String, Object>> adsHistory(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsHistory", id);
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
	public List<Map<String, Object>> adsPending(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsPending", id);
	}
	
	@Override
	public List<Map<String, Object>> adsApplied(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsApplied", id);
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
	public List<Map<String, Object>> adsExpired(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".adsExpired", id);
	}






}
