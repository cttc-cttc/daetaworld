package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AdminDAO;
import kr.co.deataworld.entity.EmployeeEntity;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;

	@Override
	public List<EmployeeEntity> employeeList() throws Exception {
		return dao.employeeList();
	}	

}
