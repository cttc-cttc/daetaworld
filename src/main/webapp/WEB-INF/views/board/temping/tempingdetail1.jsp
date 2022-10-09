<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-group1">
<form>
<table class="table">
	<c:forEach var="commentsDTO" items="${replylist}">
		<tr>
			<td colspan="2">작성자 : ${commentsDTO.m_nick}&nbsp;&nbsp;&nbsp;&nbsp;작성일자 : ${commentsDTO.c_date}
				
				<c:if test="${commentsDTO.del != 0 }">
					<span style="background-color: #ff2626;
								display: inline-block;
								padding: 0 7px;
								color: #fff;
								border-radius: 3px;">삭제된 댓글</span>
				</c:if>
				
				<%-- 관리자 페이지에서 신고 댓글 위치로 바로 가기 위한 설정 --%>
				<a id="anc${commentsDTO.c_number}"></a>
			</td>
		</tr>
		<tr>
			<td><textarea name="c_contents" rows="5" cols="80"
				readonly="readonly" class="form-control1">${commentsDTO.c_contents}</textarea>
			</td>
			
			<td>
			<c:if test="${loginInfo != null}">
				<c:if test="${loginInfo.m_id == commentsDTO.m_id}">
					<a class="btn btn-warning" href="${contextPath}/board/temping/tempingreplyupdate?c_number=${commentsDTO.c_number}">댓글수정</a>
					<a class="btn btn-danger" href="${contextPath}/board/temping/tempingreplydelete?c_number=${commentsDTO.c_number}&b_number=${temping.b_number}">댓글삭제</a>
				</c:if>
				<%-- 로그인 유저가 타인의 댓글을 볼 때만 신고버튼 보임 --%>
				<c:if test="${loginInfo.m_id != commentsDTO.m_id}">
					<div class="dropdown" style="display: inline;">
					  <button class="btn btn-secondary dropdown-toggle" type="button" id="report" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    댓글신고
					  </button>
					  <div class="dropdown-menu" aria-labelledby="report">
					    <%-- 넘기는 파라미터 : rCode, rType, (bNumber), cNumber, (aNumber), mId, rId --%>
					    <a class="dropdown-item" href="javascript:report(1, 4, -1, ${commentsDTO.c_number}, -1, '${commentsDTO.m_id}', '${loginInfo.m_id}')">광고</a>
					    <a class="dropdown-item" href="javascript:report(2, 4, -1, ${commentsDTO.c_number}, -1, '${commentsDTO.m_id}', '${loginInfo.m_id}')">비속어 사용</a>
					    <a class="dropdown-item" href="javascript:report(3, 4, -1, ${commentsDTO.c_number}, -1, '${commentsDTO.m_id}', '${loginInfo.m_id}')">분쟁 조장</a>
					    <a class="dropdown-item" href="javascript:report(4, 4, -1, ${commentsDTO.c_number}, -1, '${commentsDTO.m_id}', '${loginInfo.m_id}')">선정적</a>
					    <a class="dropdown-item" href="javascript:report(5, 4, -1, ${commentsDTO.c_number}, -1, '${commentsDTO.m_id}', '${loginInfo.m_id}')">사기 · 도박</a>
					  </div>
					</div>
				</c:if>
			</c:if>
			</td>
		</tr>
	</c:forEach>
</table>
</form>	
</div>