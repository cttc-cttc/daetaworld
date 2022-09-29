package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.NotificationDAO;

@Service
public class NotificationServiceImpl implements NotificationService {

	@Inject
	NotificationDAO dao;
	
	@Override
	public List<Map<String, Object>> notificationList(String m_id) {
		// TODO Auto-generated method stub
		return dao.notificationList(m_id);
	}

	@Override
	public int insertAdsApplicant(Map<String, String> applicant) {
		// TODO Auto-generated method stub
		return dao.insertAdsApplicant(applicant);
	}
	
	@Override
	public int notificationCnt(String m_id) {
		// TODO Auto-generated method stub
		return dao.notificationCnt(m_id);
	}

	@Override
	public int deleteNotification(String m_id) {
		// TODO Auto-generated method stub
		return dao.deleteNotification(m_id);
	}

}
