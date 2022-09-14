package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO getDetail(int b_number) throws Exception;

	public int updateReadCnt(int b_number);
	
	public int register(BoardDTO boardDTO) throws Exception;

	public int update(BoardDTO boardDTO) throws Exception;
	
}

