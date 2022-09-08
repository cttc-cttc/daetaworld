package kr.co.deataworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.employerDAO;
import kr.co.deataworld.entity.employerEntity;
import kr.co.deataworld.entity.shopInfo;

@Service
public class employerServiceImpl implements employerService{
	@Autowired
	employerDAO dao;
	
//	내 정보보기
	@Override
	public employerEntity myInfo(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfo(id);
	}
	
//	내 정보 수정
	@Override
	public int myInfoUpdate(employerEntity employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return dao.myInfoUpdate(employerEntity);
	}
	
	
//	등록한 가게 목록보기
	@Override
	public List<shopInfo> shopManagement(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopManagement(id);
	}

	@Override
	public shopInfo shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.shopInfo(s_name);
	}





}
