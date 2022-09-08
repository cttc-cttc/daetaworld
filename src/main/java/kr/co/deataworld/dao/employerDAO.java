package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.entity.employerEntity;
import kr.co.deataworld.entity.shopInfo;

public interface employerDAO {
//	내 정보보기
	public employerEntity myInfo(String id) throws Exception;	
	
//	내 정보수정
	public int myInfoUpdate(employerEntity employerEntity) throws Exception; 
	
//	등록한 가게 목록보기
	public List<shopInfo> shopManagement(String id) throws Exception;	
	
//	등록한 가게 정보보기
	public shopInfo shopInfo(String s_name) throws Exception;

}
