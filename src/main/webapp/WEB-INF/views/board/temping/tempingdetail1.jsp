<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

	 <table class="table">
	<form>
	<div class="form-group1">
	<c:forEach var="commentsDTO" items="${replylist}">
		<tr>
			<td>작성자 : ${commentsDTO.m_nick}    작성일자 : ${commentsDTO.c_date} </td>
		</tr>
		<tr>
			<td><textarea name="c_contents" rows="5" cols="40"
				readonly="tempingreadonly" class="form-control1">${commentsDTO.c_contents}</textarea>
			</td>
			
			<c:if test="${loginInfo.m_id==temping.m_id}">
			<td><a href="tempingreplyupdate?c_number=${commentsDTO.c_number}">댓글수정</a>
			<td><a href="${contextPath}/board/temping/tempingreplydelete?c_number=${commentsDTO.c_number}">댓글삭제</a>
			</c:if>
			</tr>
			
			<script>
			$(function(){
				//댓글수정 버튼을 눌렀을 때 처리
				$(".tempingreplyupdate").click(function(){
					location.href="${contextPath}/board/free/tempingreplyupdate?c_number=" + ${commentsDTO.c_number}; 
				});
				//댓글삭제 버튼을 눌렀을 때 처리
				$(".tempingreplyDelete").click(function(){
					location.href="${contextPath}/board/free/tempingreplydelete?c_number=" + ${commentsDTO.c_number}; 
				});
			})		
			</script>
			</td>
		</tr>
	</c:forEach>
	</table>
	</div>
			

</form>	
  