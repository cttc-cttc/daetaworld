package kr.co.deataworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.BoardDAO;
import kr.co.deataworld.dto.BoardDTO;


	@Service
public class BoardServiceimpl implements BoardService{
		@Autowired	
		BoardDAO dao;

		@Override
		public List<BoardDTO> list() throws Exception {
			// TODO Auto-generated method stub
			return dao.list();
		}

		@Override
		public BoardDTO getDetail(int b_number) throws Exception {
			// TODO Auto-generated method stub
			dao.updateReadCnt(b_number);
			return dao.getDetail(b_number);
		}

		@Override
		public int register(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.register(boardDTO);
		}

		@Override
		public int update(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.update(boardDTO);
		}

	
}
