package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dto.CommentsDTO;



@Service
	public interface CommentsService {

	
	
	
		// 댓글 쓰기를 위한 메소드
		public int reply(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 수정보기를 위한 메소드(댓글 읽기)
		public CommentsDTO detailReply(int c_number) throws Exception;

		// 댓글 수정을 처리하기 위한 메소드
		public int replyUpdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int replyDelete(int c_number) throws Exception;
		
		
		// 땜빵 댓글 쓰기를 위한 메소드
		public int tempingReply(CommentsDTO commentsDTO) throws Exception;
		
		// 땜빵 댓글 수정보기를 위한 메소드(댓글 읽기)
		public CommentsDTO tempingDetailReply(int c_number) throws Exception;

		// 땜빵 댓글 수정을 처리하기 위한 메소드
		public int tempingReplyUpdate(CommentsDTO commentsDTO) throws Exception;
		
		// 땜빵 댓글 삭제
		public int tempingReplyDelete(int c_number) throws Exception;

}
		
		
		
