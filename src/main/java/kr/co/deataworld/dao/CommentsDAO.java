package kr.co.deataworld.dao;



import kr.co.deataworld.dto.CommentsDTO;


public interface CommentsDAO {

	
		
		// 댓글  쓰기
		public int reply(CommentsDTO commentsDTO) throws Exception;
		
		// 해당 댓글 읽기(조회)
		public CommentsDTO detailReply(int c_number) throws Exception;
		
		// 댓글 수정
		public int replyupdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int replydelete(int c_number) throws Exception;
		
		// 댓글  쓰기
		public int tempingreply(CommentsDTO commentsDTO) throws Exception;
		
		// 해당 댓글 읽기(조회)
		public CommentsDTO tempingdetailreply(int c_number) throws Exception;
		
		// 댓글 수정
		public int tempingreplyupdate(CommentsDTO commentsDTO) throws Exception;
		
		// 댓글 삭제
		public int tempingreplydelete(int c_number) throws Exception;
		
		
	
	
}
