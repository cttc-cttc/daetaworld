package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

public interface NotificationService {
	// 로그인 유저의 알림목록
	public List<Map<String, Object>> notificationList(String m_id);
	
	
	// 알림타입 1: 구직자가 공고지원 신청 시 구인자에게 알림발송
	public int insertNotiType1(Map<String, Object> map);
	// 알림타입 2: 구직자가 구인자의 주변노예 요청을 수락/거절하면 구인자에게 알림발송
	public int insertNotiType2(Map<String, Object> map);
	// 알림타입 3: 구직자가 후기 작성 시 구인자에게 알림발송
	public int insertNotiType3(Map<String, Object> map);
	// 알림타입 4: 구직자가 구인자 후기에 대한 댓글 작성 시 구인자에게 알림발송
	public int insertNotiType4(Map<String, Object> map);
	
	// 알림타입 6: 구인자가 구직자에게 주변노예 요청을 하면 해당 구직자에게 알림발송
	public int insertNotiType6(Map<String, Object> map);
	// 알림타입 7: 구인자가 구직자의 공고지원을 수락/거절하면 구직자에게 알림발송
	public int insertNotiType7(Map<String, Object> map);
	// 알림타입 8: 구인자가 후기 작성 시 구직자에게 알림발송
	public int insertNotiType8(Map<String, Object> map);
	// 알림타입 9: 구인자가 구직자 후기에 대한 댓글 작성 시 구직자에게 알림발송
	public int insertNotiType9(Map<String, Object> map);
	
	// 알림타입 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
	public int insertNotiType10(Map<String, Object> map);
	
	// 알림타입 11: 구직자, 구인자가 자유게시판 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
	public int insertNotiType11(Map<String, Object> map);
	// 알림타입 12: 구직자, 구인자가 자유게시판 댓글 신고를 받으면 해당 댓글 번호로 관리자에게 신고내용 알림발송
	public int insertNotiType12(Map<String, Object> map);
	// 알림타입 13: 구직자가 땜빵게시판 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
	public int insertNotiType13(Map<String, Object> map);
	// 알림타입 14: 구직자가 땜빵게시판 댓글 신고를 받으면 해당 댓글 번호로 관리자에게 신고내용 알림발송
	public int insertNotiType14(Map<String, Object> map);
	// 알림타입 15: 구인자가 구인공고 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
	public int insertNotiType15(Map<String, Object> map);
	
	// 알림목록 수
	public int notificationCnt(String m_id);
	// 알림목록 전체 삭제
	public int deleteAll(String m_id);
	// 알림목록 타입 별 삭제
	public int deletePart(Map<String, Object> map);
}
