package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

public interface NotificationDAO {
	// 로그인 유저의 알림목록
	public List<Map<String, Object>> notificationList(String m_id);
	// (구인자) 구인공고 지원자 알림 등록
	public int insertAdsApplicant(Map<String, String> applicant);
	// 알림목록 수
	public int notificationCnt(String m_id);
	// 알림목록 삭제
	public int deleteNotification(String m_id);
}