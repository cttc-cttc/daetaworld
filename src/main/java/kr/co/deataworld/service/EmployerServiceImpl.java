package kr.co.deataworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.EmployerDAO;
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
	
//	내 정보 수정
	@Override
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfoUpdate(employerEntity);
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







}
