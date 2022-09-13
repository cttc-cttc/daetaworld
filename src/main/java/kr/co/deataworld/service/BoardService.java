package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;



public interface BoardService {
	
	public List<BoardDTO> list() throws Exception;
	
}
