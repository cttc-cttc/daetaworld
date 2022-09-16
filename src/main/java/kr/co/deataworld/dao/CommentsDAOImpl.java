package kr.co.deataworld.dao;

import java.util.List;

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
	public CommentsDTO detailreply(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".detailReply", c_number);
	}

	@Override
	public int replyupdate(CommentsDTO commentsDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".replyupdate", commentsDTO);
	}

	@Override
	public int replydelete(int c_number) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace + ".replyDelete", c_number);
	}

}
