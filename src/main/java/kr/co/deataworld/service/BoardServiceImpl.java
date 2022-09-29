package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.BoardDAO;
import kr.co.deataworld.dto.BoardCriteria;
import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;


	@Service
public class BoardServiceImpl implements BoardService{
		@Autowired	
		BoardDAO dao;

		

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
		public BoardDTO tempinggetDetail(int b_number) throws Exception {
			// TODO Auto-generated method stub
			dao.updateReadCnt(b_number);
			return dao.tempinggetDetail(b_number);
		}

		public int tempingRegister(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingRegister(boardDTO);
		}

		@Override
		public int tempingUpdate(BoardDTO boardDTO) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingUpdate(boardDTO);
		}

		@Override
		public int tempingDelete(int b_number) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingDelete(b_number);
		}

		@Override
		public List<BoardDTO> list(BoardCriteria cri) throws Exception {
			// TODO Auto-generated method stub
			return dao.list(cri);
		}

		@Override
		public List<BoardDTO> tempingList(BoardCriteria cri) throws Exception {
			// TODO Auto-generated method stub
			return dao.tempingList(cri);
		}

		@Override
		public int countList() throws Exception {
			// TODO Auto-generated method stub
			return dao.countList();
		}

		@Override
		public List<BoardDTO> search(Map<Object, Object> map) throws Exception{
			// TODO Auto-generated method stub
			return dao.search(map);
		}

		@Override
		public List<BoardDTO> search2(Map<Object, Object> map) throws Exception{
			// TODO Auto-generated method stub
			return dao.search2(map);
		}


	}

		


