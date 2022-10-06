package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NotificationDAOImpl implements NotificationDAO {
	private static final String NAMESPACES = "kr.co.deataworld.notificationMapper";
	
	@Inject
	SqlSession sql;

	@Override
	public List<Map<String, Object>> notificationList(String m_id) {
		// TODO Auto-generated method stub
		return sql.selectList(NAMESPACES + ".notificationList", m_id);
	}

	@Override
	public int insertAdsApplicant(Map<String, Object> applicant) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertAdsApplicant", applicant);
	}
	
	@Override
	public int notificationCnt(String m_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACES + ".notificationCnt", m_id);
	}

	@Override
	public int deleteNotification(String m_id) {
		// TODO Auto-generated method stub
		return sql.delete(NAMESPACES + ".deleteNotification", m_id);
	}

}
