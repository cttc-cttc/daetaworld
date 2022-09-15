package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.dto.JobAdsReportDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

@Repository
public class AdminDAOImpl implements AdminDAO {
	private final String nameSpace = "kr.co.deataworld.adminMapper";
	
	@Inject
	SqlSession sql;

	@Override
	public int employeeCnt() throws Exception {
		return sql.selectOne(nameSpace + ".employeeCnt");
	}

	@Override
	public List<MemberDTO> employeeList(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".employeeList", pp);
	}

	@Override
	public int employerCnt() throws Exception {
		return sql.selectOne(nameSpace + ".employerCnt");
	}

	@Override
	public List<MemberDTO> employerList(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".employerList", pp);
	}

	@Override
	public int blacklistCnt() throws Exception {
		return sql.selectOne(nameSpace + ".blacklistCnt");
	}

	@Override
	public List<BlacklistDTO> blacklist(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".blacklist", pp);
	}

	@Override
	public int jobAdsCnt() throws Exception {
		return sql.selectOne(nameSpace + ".jobAdsCnt");
	}

	@Override
	public List<JobAdsReportDTO> jobAds(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".jobAds", pp);
	}

	@Override
	public int warnJobAds(int a_number) throws Exception {
		return sql.update(nameSpace + ".warnJobAds", a_number);
	}

	@Override
	public int cancelJobAds(int re_number) throws Exception {
		return sql.update(nameSpace + ".cancelJobAds", re_number);
	}

	

	
}
