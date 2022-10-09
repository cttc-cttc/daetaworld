package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

@Repository
public class AdminDAOImpl implements AdminDAO {
	private final String nameSpace = "kr.co.deataworld.adminMapper";
	
	@Inject
	SqlSession sql;

	@Override
	public MemberDTO getUserInfo(Map<String, String> param) {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".getUserInfo", param);
	}
	
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
	public List<Map<String, Object>> blacklist(PageProcess pp) throws Exception {
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
	public int warnJobAds(int a_number, String m_id) throws Exception {
		sql.update(nameSpace + ".warnJobAds", a_number);
		return sql.update(nameSpace + ".banUpdate", m_id);
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
	public int warnFreeBoard(int b_number, String m_id) throws Exception {
		sql.update(nameSpace + ".warnFreeBoard", b_number);
		return sql.update(nameSpace + ".banUpdate", m_id);
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
	public int warnFreeComments(int c_number, String m_id) throws Exception {
		sql.update(nameSpace + ".warnFreeComments", c_number);
		return sql.update(nameSpace + ".banUpdate", m_id);
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
	public int warnTempingBoard(int b_number, String m_id) throws Exception {
		sql.update(nameSpace + ".warnTempingBoard", b_number);
		return sql.update(nameSpace + ".banUpdate", m_id);
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
	public int warnTempingComments(int c_number, String m_id) throws Exception {
		sql.update(nameSpace + ".warnTempingComments", c_number);
		return sql.update(nameSpace + ".banUpdate", m_id);
	}

	@Override
	public int cancelTempingComments(int cr_number) throws Exception {
		return sql.update(nameSpace + ".cancelTempingComments", cr_number);
	}

	@Override
	public int boardReport(Map<String, Object> reportInfo) {
		// 해당 게시판 글의 r_code 업데이트
		sql.update(nameSpace + ".boardReport", reportInfo);
		// report 테이블에 새 레코드 추가 
		return sql.insert(nameSpace + ".insertReport", reportInfo);
	}

	@Override
	public int commentsReport(Map<String, Object> reportInfo) {
		// 해당 게시판 댓글의 r_code 업데이트
		sql.update(nameSpace + ".commentsReport", reportInfo);
		// comments_report 테이블에 새 레코드 추가 
		return sql.insert(nameSpace + ".insertCommentsReport", reportInfo);
	}

	@Override
	public int adsReport(Map<String, Object> reportInfo) {
		// 해당 공고 글의 r_code 업데이트
		sql.update(nameSpace + ".adsReport", reportInfo);
		// report 테이블에 새 레코드 추가 
		return sql.insert(nameSpace + ".insertReport", reportInfo);
	}

	@Override
	public int confirmReport(Map<String, Object> reportInfo) {
		return sql.selectOne(nameSpace + ".confirmReport", reportInfo);
	}

	@Override
	public int confirmCommentsReport(Map<String, Object> reportInfo) {
		return sql.selectOne(nameSpace + ".confirmCommentsReport", reportInfo);
	}
}
