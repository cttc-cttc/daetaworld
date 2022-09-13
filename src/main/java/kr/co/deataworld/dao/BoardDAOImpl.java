package kr.co.deataworld.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.BoardDTO;

@Repository
public class BoardDAOImpl  implements BoardDAO{
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.deataworld.boardMapper";		

@Override
public List<BoardDTO> list() {
	// TODO Auto-generated method stub
	return sqlSession.selectList(namespace + ".list");
}

}