package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;

public interface BoardDAO {

	
	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO getDetail(int b_number) throws Exception;

	public int updateReadCnt(int b_number);
	
	public int register(BoardDTO boardDTO) throws Exception;

	public int update(BoardDTO boardDTO) throws Exception;
	
	public int delete(int b_number) throws Exception;

	public List<CommentsDTO> getDetail1(int b_number) throws Exception;
	
	public List<BoardDTO> tempingList() throws Exception;

	public BoardDTO tempinggetDetail(int b_number) throws Exception;
	
	public int updateReadtempingCnt(int b_number);
	
	public int tempingRegister(BoardDTO boardDTO) throws Exception;
	
	public int tempingUpdate(BoardDTO boardDTO) throws Exception;
	
	public int tempingDelete(int b_number) throws Exception;

	
}

