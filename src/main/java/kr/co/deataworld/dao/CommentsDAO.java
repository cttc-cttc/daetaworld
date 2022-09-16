package kr.co.deataworld.dao;



import kr.co.deataworld.dto.CommentsDTO;


public interface CommentsDAO {

	
		
		// 댓글  쓰기
		public int reply(CommentsDTO commentsDTO) throws Exception;
		
		// 해당 댓글 읽기(조회)
		public CommentsDTO detailreply(int c_number) throws Exception;
		
		// 댓글 수정
		public int replyupdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int replydelete(int c_number) throws Exception;
		
		
	
	
}
