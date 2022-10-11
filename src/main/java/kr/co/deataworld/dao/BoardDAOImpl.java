package kr.co.deataworld.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.BoardCriteria;
import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.deataworld.boardMapper";

	
	

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

	@Override
	public int delete(int b_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".delete", b_number);
	}

	@Override
	public List<CommentsDTO> getDetail1(int b_number, HttpServletRequest request) throws Exception{
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		Map<String, Object> loginInfo = (Map<String, Object>) session.getAttribute("loginInfo");
		
		// 관리자가 접근 시 삭제된 댓글들도 보여줌
		if(loginInfo != null && (int) loginInfo.get("m_type") == 0) {
			return sqlSession.selectList(namespace + ".adminReply", b_number);
		}
		
		return sqlSession.selectList(namespace + ".detail1", b_number);
	}

	

	@Override
	public BoardDTO tempinggetDetail(int b_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".tempinggetDetail" , b_number);
	}

	@Override
	public int updateReadtempingCnt(int b_number) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".updateReadtempingCnt", b_number);
	}
	
	@Override
	public int tempingRegister(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".tempingRegister", boardDTO);
	}

	@Override
	public int tempingUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".tempingUpdate", boardDTO);
	}

	@Override
	public int tempingDelete(int b_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".tempingDelete", b_number);
	}

	@Override
	public List<BoardDTO> list(BoardCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".list", cri);
	}

	@Override
	public List<BoardDTO> tempingList(BoardCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".tempingList", cri);
	}

	@Override
	public int countList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".countList");
	}

	@Override
	public List<BoardDTO> search(Map<Object, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".search", map);
	}

	@Override
	public List<BoardDTO> search2(Map<Object, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".search2", map);
	}

	
	
	

}