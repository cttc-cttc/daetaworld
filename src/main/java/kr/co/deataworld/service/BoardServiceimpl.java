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

	
	
}
