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
	public int insertNotiType1(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType1(map);
	}
	
	@Override
	public int insertNotiType2(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType2(map);
	}
	
	@Override
	public int insertNotiType3(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType3(map);
	}
	
	@Override
	public int insertNotiType4(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType4(map);
	}
	
	
	@Override
	public int insertNotiType6(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType6(map);
	}
	
	@Override
	public int insertNotiType7(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType7(map);
	}
	
	@Override
	public int insertNotiType8(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType8(map);
	}
	
	@Override
	public int insertNotiType9(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType9(map);
	}
	
	
	@Override
	public int insertNotiType10(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType10(map);
	}
	
	
	@Override
	public int insertNotiType11(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType11(map);
	}
	
	@Override
	public int insertNotiType12(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType12(map);
	}
	
	@Override
	public int insertNotiType13(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType13(map);
	}
	
	@Override
	public int insertNotiType14(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType14(map);
	}
	
	@Override
	public int insertNotiType15(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.insertNotiType15(map);
	}
	
	@Override
	public int notificationCnt(String m_id) {
		// TODO Auto-generated method stub
		return dao.notificationCnt(m_id);
	}

	@Override
	public int deleteAll(String m_id) {
		// TODO Auto-generated method stub
		return dao.deleteAll(m_id);
	}

	@Override
	public int deletePart(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.deletePart(map);
	}
}
