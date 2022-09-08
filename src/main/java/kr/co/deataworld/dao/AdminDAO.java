package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.entity.EmployeeEntity;

public interface AdminDAO {
	// 구직자 회원정보
	public List<EmployeeEntity> employeeList() throws Exception;
}
