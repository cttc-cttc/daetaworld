<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group1">
<form>
<table class="table">
	<c:forEach var="commentsDTO" items="${list}">
		<tr>
			<td>작성자 : ${commentsDTO.m_nick}    작성일자 : ${commentsDTO.c_date} </td>
		</tr>
		<tr>
			<td><textarea name="c_contents" rows="5" cols="40"
				readonly="readonly" class="form-control1">${commentsDTO.c_contents}</textarea>
			</td>
			
			<c:if test="${loginInfo.m_id == commentsDTO.m_id}">
				<td><a href="replyupdate?c_number=${commentsDTO.c_number}">댓글수정</a></td>
				<td><a href="${contextPath}/board/free/replydelete?c_number=${commentsDTO.c_number}&b_number=${board.b_number}">댓글삭제</a></td>
			</c:if>
		</tr>
	</c:forEach>
</table>
</form>	
</div>