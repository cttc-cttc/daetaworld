package kr.co.deataworld.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.deataworld.dto.CommentsDTO;



@Service
	public interface CommentsService {

	
	
	
		// 댓글 쓰기를 위한 메소드
		public int reply(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 수정보기를 위한 메소드(댓글 읽기)
		public CommentsDTO detailreply(int c_number) throws Exception;

		// 댓글 수정을 처리하기 위한 메소드
		public int replyupdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int replydelete(int c_number) throws Exception;
		
}
		
		
		
