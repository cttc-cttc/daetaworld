package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> list() throws Exception;
	
}

