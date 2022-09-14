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
	
	return sqlSession.selectList(namespace + ".list");
}

@Override
public BoardDTO getDetail(int b_number) throws Exception {
	
	return sqlSession.selectOne(namespace + ".detail", b_number);
}

@Override
public int updateReadCnt(int b_number) {
	
	return sqlSession.update(namespace + ".updateReadCnt", b_number);
	
}

@Override
public int register(BoardDTO boardDTO) throws Exception {
	
	return sqlSession.insert(namespace + ".register", boardDTO);
}

@Override
public int update(BoardDTO boardDTO) throws Exception {
	
	return sqlSession.update(namespace + ".update", boardDTO);
}

}