package kr.co.deataworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.CommentsDAO;
import kr.co.deataworld.dto.CommentsDTO;


@Service
public class CommentsServiceImpl implements CommentsService{

	@Autowired
	private CommentsDAO dao;
	
	
	
	

	@Override
	public int reply(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.reply(commentsDTO);
	}

	@Override
	public CommentsDTO detailReply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailReply(c_number);
	}

	@Override
	public int replyupdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyupdate(commentsDTO);
	}

	@Override
	public int replydelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.replydelete(c_number);
	}

	@Override
	public int tempingreply(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingreply(commentsDTO);
	}

	@Override
	public CommentsDTO tempingdetailreply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingdetailreply(c_number);
	}

	@Override
	public int tempingreplyupdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingreplyupdate(commentsDTO);
	}

	@Override
	public int tempingreplydelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingreplydelete(c_number);
	}

}
