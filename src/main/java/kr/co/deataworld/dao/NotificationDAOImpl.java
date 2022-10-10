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
	public int insertNotiType1(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType1", map);
	}
	
	@Override
	public int insertNotiType2(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType2", map);
	}
	
	@Override
	public int insertNotiType3(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType3", map);
	}
	
	@Override
	public int insertNotiType4(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType4", map);
	}
	
	
	@Override
	public int insertNotiType6(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType6", map);
	}

	@Override
	public int insertNotiType7(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType7", map);
	}
	
	@Override
	public int insertNotiType8(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType8", map);
	}
	
	@Override
	public int insertNotiType9(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType9", map);
	}
	
	
	@Override
	public int insertNotiType10(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType10", map);
	}
	
	
	@Override
	public int insertNotiType11(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType11", map);
	}
	
	@Override
	public int insertNotiType12(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType12", map);
	}
	
	
	@Override
	public int insertNotiType13(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType13", map);
	}
	
	
	@Override
	public int insertNotiType14(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType14", map);
	}
	
	@Override
	public int insertNotiType15(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACES + ".insertNotiType15", map);
	}
	
	@Override
	public int notificationCnt(String m_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACES + ".notificationCnt", m_id);
	}

	@Override
	public int deleteAll(String m_id) {
		// TODO Auto-generated method stub
		return sql.delete(NAMESPACES + ".deleteAll", m_id);
	}

	@Override
	public int deletePart(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sql.delete(NAMESPACES + ".deletePart", map);
	}
}
