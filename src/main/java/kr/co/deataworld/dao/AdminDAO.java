package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.util.PageProcess;

public interface AdminDAO {
	// 전체 구직자 수
	public int employeeCnt() throws Exception;
	// 구직자 회원 조회(페이징 처리)
	public List<Map<String, Object>> employeeList(PageProcess pp) throws Exception;
	
	// 전체 구인자 수
	public int employerCnt() throws Exception;
	// 구인자 회원 조회(페이징 처리)
	public List<Map<String, Object>> employerList(PageProcess pp) throws Exception;
	
	// 전체 블랙리스트 수
	public int blacklistCnt() throws Exception;
	// 블랙리스트 조회(페이징 처리)
	public List<BlacklistDTO> blacklist(PageProcess pp) throws Exception;
	
	// 전체 구인공고 신고 수
	public int jobAdsCnt() throws Exception;
	// 구인공고 신고 조회(페이징 처리)
	public List<Map<String, Object>> jobAds(PageProcess pp) throws Exception;
	// 구인공고 신고 삭제
	public int warnJobAds(int a_number) throws Exception;
	// 구인공고 신고 취소
	public int cancelJobAds(int re_number) throws Exception;
	
	// 전체 자유게시판 글 신고 수
	public int freeBoardCnt() throws Exception;
	// 자유게시판 글 신고 조회(페이징 처리)
	public List<Map<String, Object>> freeBoard(PageProcess pp) throws Exception;
	// 자유게시판 글 신고 삭제
	public int warnFreeBoard(int b_number) throws Exception;
	// 자유게시판 글 신고 취소
	public int cancelFreeBoard(int re_number) throws Exception;
	
	// 전체 자유게시판 댓글 신고 수
	public int freeCommentsCnt() throws Exception;
	// 자유게시판 댓글 신고 조회(페이징 처리)
	public List<Map<String, Object>> freeComments(PageProcess pp) throws Exception;
	// 자유게시판 댓글 신고 삭제
	public int warnFreeComments(int c_number) throws Exception;
	// 자유게시판 댓글 신고 취소
	public int cancelFreeComments(int cr_number) throws Exception;
	
	// 전체 땜빵게시판 글 신고 수
	public int tempingBoardCnt() throws Exception;
	// 땜빵게시판 글 신고 조회(페이징 처리)
	public List<Map<String, Object>> tempingBoard(PageProcess pp) throws Exception;
	// 땜빵게시판 글 신고 삭제
	public int warnTempingBoard(int b_number) throws Exception;
	// 땜빵게시판 글 신고 취소
	public int cancelTempingBoard(int re_number) throws Exception;
	
	// 전체 땜빵게시판 댓글 신고 수
	public int tempingCommentsCnt() throws Exception;
	// 땜빵게시판 댓글 신고 조회(페이징 처리)
	public List<Map<String, Object>> tempingComments(PageProcess pp) throws Exception;
	// 땜빵게시판 댓글 신고 삭제
	public int warnTempingComments(int c_number) throws Exception;
	// 땜빵게시판 댓글 신고 취소
	public int cancelTempingComments(int cr_number) throws Exception;
}
