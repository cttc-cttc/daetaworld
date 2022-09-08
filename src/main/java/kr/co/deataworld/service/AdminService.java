package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.entity.EmployeeEntity;

public interface AdminService {
	// 구직자 회원정보
	public List<EmployeeEntity> employeeList() throws Exception;
}
