package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.deataworld.dto.BoardCriteria;
import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;

public interface BoardDAO {

	// 게시판 목록
	public List<BoardDTO> list(BoardCriteria cri) throws Exception;

	// 자유게시판 글갯수
	public int countList() throws Exception;

	// 게시판 조건검색
	public List<BoardDTO> search(Map<Object, Object> map) throws Exception;

	// 땜빵게시판 조건검색
	public List<BoardDTO> search2(Map<Object, Object> map) throws Exception;

	public BoardDTO getDetail(int b_number) throws Exception;

	public int updateReadCnt(int b_number);

	public int register(BoardDTO boardDTO) throws Exception;

	public int update(BoardDTO boardDTO) throws Exception;

	public int delete(int b_number) throws Exception;

	public List<CommentsDTO> getDetail1(int b_number, HttpServletRequest request) throws Exception;

	// 땜빵 게시판 목록
	public List<BoardDTO> tempingList(BoardCriteria cri) throws Exception;

	public BoardDTO tempinggetDetail(int b_number) throws Exception;

	public int updateReadtempingCnt(int b_number);

	public int tempingRegister(BoardDTO boardDTO) throws Exception;

	public int tempingUpdate(BoardDTO boardDTO) throws Exception;

	public int tempingDelete(int b_number) throws Exception;

}
