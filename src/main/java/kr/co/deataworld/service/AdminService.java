package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

public interface AdminService {
	// 회원 기본정보 조회
	public MemberDTO getUserInfo(Map<String, String> param);
	// 회원 포인트정보 조회
	
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
	
	// 자유/땜빵게시판 글 신고
	public int boardReport(Map<String, Object> reportInfo);
	// 자유/땜빵게시판 댓글 신고
	public int commentsReport(Map<String, Object> reportInfo);
	// 구인공고 글 신고
	public int adsReport(Map<String, Object> reportInfo);
	// 로그인 유저가 이미 신고한 글인지 확인
	public int confirmReport(Map<String, Object> reportInfo);
	// 로그인 유저가 이미 신고한 댓글인지 확인
	public int confirmCommentsReport(Map<String, Object> reportInfo);
}
