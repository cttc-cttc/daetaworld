package kr.co.deataworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.entity.employerEntity;
import kr.co.deataworld.entity.shopInfo;

@Repository
public class employerDAOImpl implements employerDAO{
	
	@Autowired
	SqlSession sqlSession;
	
	String nameSpace = "kr.co.deataworld.employerMapper";
	
//	내 정보보기
	@Override
	public employerEntity myInfo(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".myInfo", id);
	}
	
//	내 정보수정
	@Override
	public int myInfoUpdate(employerEntity employerEntity) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(nameSpace + ".myInfoUpdate", employerEntity);
	}
	
//	등록한 가게 목록보기
	@Override
	public List<shopInfo> shopManagement(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(nameSpace + ".shopManagement", id);
	}

	@Override
	public shopInfo shopInfo(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(nameSpace + ".shopInfo", s_name);
	}





}
