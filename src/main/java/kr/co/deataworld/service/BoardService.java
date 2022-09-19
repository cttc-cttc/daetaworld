package kr.co.deataworld.service;

import java.util.List;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;



public interface BoardService {
	
	public List<BoardDTO> list() throws Exception;
	
	public BoardDTO getDetail(int b_number) throws Exception;
	
	public int register(BoardDTO boardDTO) throws Exception;
	
	public int update(BoardDTO boardDTO) throws Exception;
	
	public int delete(int b_number) throws Exception;

	public List<CommentsDTO> getDetail1(int b_number) throws Exception;
	
	public List<BoardDTO> tempinglist() throws Exception;
	
	public BoardDTO tempinggetDetail(int b_number) throws Exception;
	
	public int tempingregister(BoardDTO boardDTO) throws Exception;
	
	public int tempingupdate(BoardDTO boardDTO) throws Exception;
	
	public int tempingdelete(int b_number) throws Exception;
}
