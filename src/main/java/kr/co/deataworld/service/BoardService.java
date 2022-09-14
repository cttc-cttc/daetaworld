package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;



public interface BoardService {
	
	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO getDetail(int b_number) throws Exception;
	
	public int register(BoardDTO boardDTO) throws Exception;
	
	public int update(BoardDTO boardDTO) throws Exception;
	
}
