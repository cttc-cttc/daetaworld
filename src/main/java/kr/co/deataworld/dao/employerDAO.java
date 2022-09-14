package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;

public interface EmployerDAO {
//	내 정보보기
	public MemberDTO myInfo(String id) throws Exception;	
	
//	내 정보수정
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception; 
	
//	등록한 가게 목록보기
	public List<ShopInfoDTO> shopManagement(String id) throws Exception;	
	
//	등록한 가게 정보보기
	public ShopInfoDTO shopInfo(String s_name) throws Exception;

}
