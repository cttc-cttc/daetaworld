package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.EmployerDAO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

@Service
public class EmployerServiceImpl implements EmployerService{
	@Autowired
	EmployerDAO dao;
	
//	내 정보보기
	@Override
	public MemberDTO myInfo(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfo(id);
	}
	
	@Override
	public int adsRegister(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsRegister(map);
	}
	
//	내 정보 수정
	@Override
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfoUpdate(employerEntity);
	}	
	
	@Override
	public List<Map<String, Object>> checkEmployees(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkEmployees(id);
	}
	
	@Override
	public List<MemberDTO> nearCandidates(String address) throws Exception {
		// TODO Auto-generated method stub
		return dao.nearCandidates(address);
	}
	
	@Override
	public Map<String, Object> nearCanDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.nearCanDetail(map);
	}

	
//	등록한 가게 목록보기
	@Override
	public List<ShopInfoDTO> shopManagement(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopManagement(id);
	}

	@Override
	public ShopInfoDTO shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopInfo(s_name);
	}

	@Override
	public List<Map<String, Object>> adsHistory(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsHistory(id);
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
	public List<Map<String, Object>> adsPending(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsPending(id);		
	}
	
	@Override
	public List<Map<String, Object>> adsApplied(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsApplied(id);		
	}
	
	@Override
	public List<Map<String, Object>> candidates(int a_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.candidates(a_number);		
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
	public int applyAccept(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.applyAccept(m_id);
	}
	
	@Override
	public int applyDeny(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.applyDeny(m_id);
	}

	@Override
	public List<Map<String, Object>> adsExpired(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adsExpired(id);
	}














}
