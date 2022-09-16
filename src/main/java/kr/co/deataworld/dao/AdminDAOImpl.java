package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.BlacklistDTO;
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
	public List<Map<String, Object>> employeeList(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".employeeList", pp);
	}

	@Override
	public int employerCnt() throws Exception {
		return sql.selectOne(nameSpace + ".employerCnt");
	}

	@Override
	public List<Map<String, Object>> employerList(PageProcess pp) throws Exception {
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
	public List<Map<String, Object>> jobAds(PageProcess pp) throws Exception {
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

	@Override
	public int freeBoardCnt() throws Exception {
		return sql.selectOne(nameSpace + ".freeBoardCnt");
	}

	@Override
	public List<Map<String, Object>> freeBoard(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".freeBoard", pp);
	}

	@Override
	public int warnFreeBoard(int b_number) throws Exception {
		return sql.update(nameSpace + ".warnFreeBoard", b_number);
	}

	@Override
	public int cancelFreeBoard(int re_number) throws Exception {
		return sql.update(nameSpace + ".cancelFreeBoard", re_number);
	}

	@Override
	public int freeCommentsCnt() throws Exception {
		return sql.selectOne(nameSpace + ".freeCommentsCnt");
	}

	@Override
	public List<Map<String, Object>> freeComments(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".freeComments", pp);
	}

	@Override
	public int warnFreeComments(int c_number) throws Exception {
		return sql.update(nameSpace + ".warnFreeComments", c_number);
	}

	@Override
	public int cancelFreeComments(int cr_number) throws Exception {
		return sql.update(nameSpace + ".cancelFreeComments", cr_number);
	}

	@Override
	public int tempingBoardCnt() throws Exception {
		return sql.selectOne(nameSpace + ".tempingBoardCnt");
	}

	@Override
	public List<Map<String, Object>> tempingBoard(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".tempingBoard", pp);
	}

	@Override
	public int warnTempingBoard(int b_number) throws Exception {
		return sql.update(nameSpace + ".warnTempingBoard", b_number);
	}

	@Override
	public int cancelTempingBoard(int re_number) throws Exception {
		return sql.update(nameSpace + ".cancelTempingBoard", re_number);
	}

	@Override
	public int tempingCommentsCnt() throws Exception {
		return sql.selectOne(nameSpace + ".tempingCommentsCnt");
	}

	@Override
	public List<Map<String, Object>> tempingComments(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".tempingComments", pp);
	}

	@Override
	public int warnTempingComments(int c_number) throws Exception {
		return sql.update(nameSpace + ".warnTempingComments", c_number);
	}

	@Override
	public int cancelTempingComments(int cr_number) throws Exception {
		return sql.update(nameSpace + ".cancelTempingComments", cr_number);
	}

	

	
}
