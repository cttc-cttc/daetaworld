package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.AdminDAO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;

	@Override
	public MemberDTO getUserInfo(Map<String, String> param) {
		// TODO Auto-generated method stub
		return dao.getUserInfo(param);
	}
	
	@Override
	public int employeeCnt() throws Exception {
		return dao.employeeCnt();
	}

	@Override
	public List<Map<String, Object>> employeeList(PageProcess pp) throws Exception {
		return dao.employeeList(pp);
	}

	@Override
	public int employerCnt() throws Exception {
		return dao.employerCnt();
	}

	@Override
	public List<Map<String, Object>> employerList(PageProcess pp) throws Exception {
		return dao.employerList(pp);
	}

	@Override
	public int blacklistCnt() throws Exception {
		return dao.blacklistCnt();
	}

	@Override
	public List<Map<String, Object>> blacklist(PageProcess pp) throws Exception {
		return dao.blacklist(pp);
	}

	@Override
	public int jobAdsCnt() throws Exception {
		return dao.jobAdsCnt();
	}

	@Override
	public List<Map<String, Object>> jobAds(PageProcess pp) throws Exception {
		return dao.jobAds(pp);
	}

	@Override
	public int warnJobAds(int a_number, String m_id) throws Exception {
		return dao.warnJobAds(a_number, m_id);
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
	public List<Map<String, Object>> freeBoard(PageProcess pp) throws Exception {
		return dao.freeBoard(pp);
	}

	@Override
	public int warnFreeBoard(int b_number, String m_id) throws Exception {
		return dao.warnFreeBoard(b_number, m_id);
	}

	@Override
	public int cancelFreeBoard(int re_number) throws Exception {
		return dao.cancelFreeBoard(re_number);
	}

	@Override
	public int freeCommentsCnt() throws Exception {
		return dao.freeCommentsCnt();
	}

	@Override
	public List<Map<String, Object>> freeComments(PageProcess pp) throws Exception {
		return dao.freeComments(pp);
	}

	@Override
	public int warnFreeComments(int c_number, String m_id) throws Exception {
		return dao.warnFreeComments(c_number, m_id);
	}

	@Override
	public int cancelFreeComments(int cr_number) throws Exception {
		return dao.cancelFreeComments(cr_number);
	}

	@Override
	public int tempingBoardCnt() throws Exception {
		return dao.tempingBoardCnt();
	}

	@Override
	public List<Map<String, Object>> tempingBoard(PageProcess pp) throws Exception {
		return dao.tempingBoard(pp);
	}

	@Override
	public int warnTempingBoard(int b_number, String m_id) throws Exception {
		return dao.warnTempingBoard(b_number, m_id);
	}

	@Override
	public int cancelTempingBoard(int re_number) throws Exception {
		return dao.cancelTempingBoard(re_number);
	}

	@Override
	public int tempingCommentsCnt() throws Exception {
		return dao.tempingCommentsCnt();
	}

	@Override
	public List<Map<String, Object>> tempingComments(PageProcess pp) throws Exception {
		return dao.tempingComments(pp);
	}

	@Override
	public int warnTempingComments(int c_number, String m_id) throws Exception {
		return dao.warnTempingComments(c_number, m_id);
	}

	@Override
	public int cancelTempingComments(int cr_number) throws Exception {
		return dao.cancelTempingComments(cr_number);
	}

	@Override
	public int boardReport(Map<String, Object> reportInfo) {
		return dao.boardReport(reportInfo);
	}

	@Override
	public int commentsReport(Map<String, Object> reportInfo) {
		return dao.commentsReport(reportInfo);
	}

	@Override
	public int adsReport(Map<String, Object> reportInfo) {
		return dao.adsReport(reportInfo);
	}

	@Override
	public int confirmReport(Map<String, Object> reportInfo) {
		return dao.confirmReport(reportInfo);
	}

	@Override
	public int confirmCommentsReport(Map<String, Object> reportInfo) {
		return dao.confirmCommentsReport(reportInfo);
	}
	
	
}