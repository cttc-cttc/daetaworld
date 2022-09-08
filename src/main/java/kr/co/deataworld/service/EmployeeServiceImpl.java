package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.EmployeeDAO;
import kr.co.deataworld.entity.EmployeeEntity;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeDAO dao;
	
	@Override //내 정보 불러오기 (구직자)
	public EmployeeEntity myInfo() throws Exception {
		return dao.myInfo();
	}

	@Override //닉네임 변경시 중복검사(구직자)
	public int e_nick(String e_nick) throws Exception {
		return dao.e_nick(e_nick);
	}



//	@Override //내 정보 수정하기 (구직자)
//	public EmployeeEntity myInfoUpdate() {
//		// TODO Auto-generated method stub
//		return dao.myInfoUpdate();
//	}

}
