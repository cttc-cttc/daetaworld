package kr.co.deataworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.BoardDAO;
import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;


	@Service
public class BoardServiceImpl implements BoardService{
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

		@Override
		public int delete(int b_number) throws Exception {
			// TODO Auto-generated method stub
			return dao.delete(b_number);
		}

		@Override
		public List<CommentsDTO> getDetail1(int b_number) throws Exception {
			// TODO Auto-generated method stub
			return dao.getDetail1(b_number);
		}

		@Override
		public List<BoardDTO> tempinglist() throws Exception {
			// TODO Auto-generated method stub
			return dao.tempinglist();
		}

		@Override
		public BoardDTO tempinggetDetail(int b_number) throws Exception {
			// TODO Auto-generated method stub
			dao.updateReadCnt(b_number);
			return dao.tempinggetDetail(b_number);
		}

		public int tempingregister(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingregister(boardDTO);
		}

		@Override
		public int tempingupdate(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingupdate(boardDTO);
		}

		@Override
		public int tempingdelete(int b_number) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingdelete(b_number);
		}

	

	
		
		
		
		
		}


