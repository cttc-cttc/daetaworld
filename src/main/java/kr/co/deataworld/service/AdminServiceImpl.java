package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AdminDAO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;

	@Override
	public int employeeCnt() throws Exception {
		return dao.employeeCnt();
	}

	@Override
	public List<MemberDTO> employeeList(PageProcess pp) throws Exception {
		return dao.employeeList(pp);
	}
}
