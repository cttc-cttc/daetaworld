package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

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
	public int replyUpdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyUpdate(commentsDTO);
	}

	@Override
	public int replyDelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.replyDelete(c_number);
	}

	@Override
	public int tempingReply(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingReply(commentsDTO);
	}

	@Override
	public CommentsDTO tempingDetailReply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingDetailReply(c_number);
	}

	@Override
	public int tempingReplyUpdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingReplyUpdate(commentsDTO);
	}
	

	@Override
	public int tempingReplyDelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return dao.tempingReplyDelete(c_number);
	}



}
