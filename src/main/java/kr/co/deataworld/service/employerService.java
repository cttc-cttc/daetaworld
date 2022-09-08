package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.EmployerDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface employerService {
//	내 정보보기
	public EmployerDTO myInfo(String id) throws Exception;
	
//	내 정보수정
	public int myInfoUpdate(EmployerDTO employerEntity) throws Exception; 
	
//	등록한 가게 목록보기
	public List<ShopInfoDTO> shopManagement(String id) throws Exception;
	
//	등록한 가게 정보보기
	public ShopInfoDTO shopInfo(String s_name) throws Exception;
	
}
