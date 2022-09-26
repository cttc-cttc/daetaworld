package kr.co.deataworld.dao;



import java.util.Map;

import kr.co.deataworld.dto.CommentsDTO;


public interface CommentsDAO {

	
		
		// 댓글  쓰기
		public int reply(CommentsDTO commentsDTO) throws Exception;
		
		// 해당 댓글 읽기(조회)
		public CommentsDTO detailReply(int c_number) throws Exception;
		
		// 댓글 수정
		public int replyUpdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int replyDelete(int c_number) throws Exception;
		
		// 댓글  쓰기
		public int tempingReply(CommentsDTO commentsDTO) throws Exception;
		
		// 해당 댓글 읽기(조회)
		public CommentsDTO tempingDetailReply(int c_number) throws Exception;
		
		// 댓글 수정
		public int tempingReplyUpdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int tempingReplyDelete(int c_number) throws Exception;
		
		
	
	
}
