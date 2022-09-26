package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.CommentsDTO;

@Repository

public class CommentsDAOImpl implements CommentsDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "kr.co.deataworld.commentsMapper";


	@Override
	public int reply(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".reply", commentsDTO);
	}

	@Override
	public CommentsDTO detailReply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".detailReply", c_number);
	}

	@Override
	public int replyUpdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".replyUpdate", commentsDTO);
	}

	@Override
	public int replyDelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".replyDelete", c_number);
	}

	public int tempingReply(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace + ".tempingReply", commentsDTO);
	}

	@Override
	public CommentsDTO tempingDetailReply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".tempingDetailReply", c_number);
	}

	@Override
	public int tempingReplyUpdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".tempingReplyUpdate", commentsDTO);
	}

	@Override
	public int tempingReplyDelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".tempingReplyDelete", c_number);
	}

}
