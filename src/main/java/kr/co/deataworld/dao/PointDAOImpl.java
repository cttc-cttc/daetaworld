package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.PointDTO;

@Repository
public class PointDAOImpl implements PointDAO{
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.pointMapper";

	@Override
	public PointDTO point(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".point", id);
	}

	@Override
	public List<EarnedPointDTO> earnedPoint(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".earnedPoint", id);
	}

	@Override
	public List<DeductedPointDTO> deductedPoint(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".deductedPoint", id);
	}

	@Override
	public int pointDeduct(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub		
		sqlSession.insert(nameSpace + ".pointDeduct", map);		
		return sqlSession.update(nameSpace + ".pointUse", map);
	}

	@Override
	public int pointAdd(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(nameSpace + ".pointEarned", map);
		return sqlSession.update(nameSpace + ".pointAdd", map);
	}
	
	
	
	
}
