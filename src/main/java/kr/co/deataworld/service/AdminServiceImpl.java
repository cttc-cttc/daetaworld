package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AdminDAO;
import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.dto.FreeBoardReportDTO;
import kr.co.deataworld.dto.JobAdsReportDTO;
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

	@Override
	public int employerCnt() throws Exception {
		return dao.employerCnt();
	}

	@Override
	public List<MemberDTO> employerList(PageProcess pp) throws Exception {
		return dao.employerList(pp);
	}

	@Override
	public int blacklistCnt() throws Exception {
		return dao.blacklistCnt();
	}

	@Override
	public List<BlacklistDTO> blacklist(PageProcess pp) throws Exception {
		return dao.blacklist(pp);
	}

	@Override
	public int jobAdsCnt() throws Exception {
		return dao.jobAdsCnt();
	}

	@Override
	public List<JobAdsReportDTO> jobAds(PageProcess pp) throws Exception {
		return dao.jobAds(pp);
	}

	@Override
	public int warnJobAds(int a_number) throws Exception {
		return dao.warnJobAds(a_number);
	}

	@Override
	public int cancelJobAds(int re_number) throws Exception {
		return dao.cancelJobAds(re_number);
	}

	@Override
	public int freeBoardCnt() throws Exception {
		return dao.freeBoardCnt();
	}

	@Override
	public List<FreeBoardReportDTO> freeBoard(PageProcess pp) throws Exception {
		return dao.freeBoard(pp);
	}
}
