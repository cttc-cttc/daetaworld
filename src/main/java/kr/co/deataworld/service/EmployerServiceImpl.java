package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.EmployerDAO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCodeDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

@Service
public class EmployerServiceImpl implements EmployerService{
	@Autowired
	EmployerDAO dao;
	
//	내 정보보기
	@Override
	public MemberDTO myInfo(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfo(m_id);
	}
	
	@Override
	public int signOut(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.signOut(m_id);
	}
	
	@Override
	public int adsRegister(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsRegister(map);
	}
	
	@Override
	public int pointChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.pointChk(m_id);
	}
	
//	내 정보 수정
	@Override
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfoUpdate(employerEntity);
	}	
	
	@Override
	public int countryRegister(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.countryRegister(map);
	}
	
	@Override
	public List<Map<String, Object>> checkEmployees(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkEmployees(m_id);
	}
	
	@Override
	public List<MemberDTO> nearCandidates(String areaCode) throws Exception {
		// TODO Auto-generated method stub
		return dao.nearCandidates(areaCode);
	}
	
	@Override
	public Map<String, Object> nearCanDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.nearCanDetail(map);
	}
	
	@Override
	public int nearCanDetailCnt(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.nearCanDetailCnt(map);
	}

	
//	등록한 가게 목록보기
	@Override
	public List<ShopInfoDTO> shopManagement(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopManagement(m_id);
	}

	@Override
	public ShopInfoDTO shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopInfo(s_name);
	}

	@Override
	public List<Map<String, Object>> adsHistory(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsHistory(m_id);
	}

	@Override
	public Map<String, Object> adsRegistered(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsRegistered(a_number);
	}
	
	@Override
	public int adsUpdate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsUpdate(map);
	}

	@Override
	public List<Map<String, Object>> adsPending(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsPending(m_id);		
	}
	
	@Override
	public List<Map<String, Object>> adsApplied(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsApplied(m_id);		
	}
	
	@Override
	public int adsComplete(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsComplete(a_number);
	}
	
	@Override
	public int reAdsRegister(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.reAdsRegister(a_number);
	}
	
	@Override
	public List<Map<String, Object>> adsRequested(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsRequested(m_id);
	}
	
	@Override
	public int cancelRequest(int ja_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.cancelRequest(ja_number);
	}
	
	@Override
	public List<Map<String, Object>> candidates(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.candidates(a_number);		
	}
	
	@Override
	public List<Map<String, Object>> confirmedCandidates(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.confirmedCandidates(a_number);
	}
	
	@Override
	public Map<String, Object> canDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.canDetail(map);		
	}
	
	@Override
	public int applyRequest(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.applyRequest(map);
	}
	
	@Override
	public int applyAccept(int ja_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.applyAccept(ja_number);
	}
	
	@Override
	public int applyDeny(int ja_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.applyDeny(ja_number);
	}

	@Override
	public List<Map<String, Object>> adsExpired(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsExpired(m_id);
	}

	@Override
	public List<JobCodeDTO> jobList() throws Exception {
		// TODO Auto-generated method stub
		return dao.jobList();
	}
	
	@Override
	public int shopInfoUpdate(ShopInfoDTO shopInfo) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopInfoUpdate(shopInfo);
	}

	@Override
	public int shopRegister(ShopInfoDTO shopInfo) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopRegister(shopInfo);
	}

	@Override
	public int adsDelete(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsDelete(a_number);
	}

	@Override
	public int shopDelete(int s_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopDelete(s_number);
	}

}
