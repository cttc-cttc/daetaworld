<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>자유 게시판</title>
<%@ include file="../../include/head.jsp"%>

<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../../include/header.jsp"%>
		</header>
		<!-- 상단 메뉴 end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<%@ include file="../../include/boardSidebar.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>자유게시판</h1>
									</div>
								</div>
							</div>

							<div class="table-responsive">
								<div class="box-body">
									<div class="form-group">
										<label>제목</label> <input type="text" name="b_title"
											class="form-control" value="${board.b_title}"
											readonly="readonly" />
									</div>

									<div class="form-group">
										<label>내용</label>
										<textarea name="b_contents" rows="5" readonly="readonly"
											class="form-control">${board.b_contents}</textarea>
									</div>

									<div class="form-group">
										<label>작성자</label> <input type="text" name="m_id"
											class="form-control" value="${board.m_nick}"
											readonly="readonly" />
									</div>
								</div>

								<div class="box-footer">
									<button id="goList" class="btn btn-success">목록</button>
									<c:if test="${loginInfo.m_id == board.m_id}">
										<button id="goUpdate" class="btn btn-warning">수정</button>
										<button id="goDelete" class="btn btn-danger">삭제</button>
									</c:if>
									<c:if test="${loginInfo != null}">
										<button id="goReply" class="btn btn-primary">댓글작성</button>
										
										<%-- 로그인 유저가 타인의 글을 볼 때만 신고버튼 보임 --%>
										<c:if test="${loginInfo.m_id != board.m_id}">
											<div class="dropdown" style="display: inline;">
											  <button class="btn btn-secondary dropdown-toggle" type="button" id="report" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											    신고
											  </button>
											  <div class="dropdown-menu" aria-labelledby="report">
											    <%-- 넘기는 파라미터 : rCode, rType, bNumber, (cNumber), (aNumber), mId, rId --%>
											    <a class="dropdown-item" href="javascript:report(1, 1, ${board.b_number}, -1, -1, '${board.m_id}', '${loginInfo.m_id}')">광고</a>
											    <a class="dropdown-item" href="javascript:report(2, 1, ${board.b_number}, -1, -1, '${board.m_id}', '${loginInfo.m_id}')">비속어 사용</a>
											    <a class="dropdown-item" href="javascript:report(3, 1, ${board.b_number}, -1, -1, '${board.m_id}', '${loginInfo.m_id}')">분쟁 조장</a>
											    <a class="dropdown-item" href="javascript:report(4, 1, ${board.b_number}, -1, -1, '${board.m_id}', '${loginInfo.m_id}')">선정적</a>
											    <a class="dropdown-item" href="javascript:report(5, 1, ${board.b_number}, -1, -1, '${board.m_id}', '${loginInfo.m_id}')">사기 · 도박</a>
											  </div>
											</div>
										</c:if>
									</c:if>
								</div>

								<div id="replylist">
									<%@ include file="detail1.jsp"%>							
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../../include/footer.jsp"%>
	</div>
	<%@ include file="../../include/plugin.jsp"%>
	<script src="${contextPath}/resources/custom_js/report_process.js"></script>
	<script>
		window.addEventListener('load', function() {
			//목록 버튼을 눌렀을 때 처리
			$("#goList").click(function(){
				location.href="free";
			});
			//삭제 버튼을 눌렀을 때 처리
			$("#goDelete").click(function(){
				location.href="${contextPath}/board/free/delete?b_number=${board.b_number}";
			});
			//수정 버튼을 눌렀을 때 처리
			$("#goUpdate").click(function(){
				location.href="${contextPath}/board/free/update?b_number=${board.b_number}";
			});
			//댓글작성 버튼을 눌렀을 때 처리
			$("#goReply").click(function() {
				location.href = "${contextPath}/board/free/reply?b_number=${board.b_number}";
			});
			
			// 페이지 로드 시 스크롤을 200만큼 위로 올림(관리자 페이지에서 신고 댓글 위치로 바로 가기 위해)
			document.documentElement.scrollTop -= 200;
		});
	</script>
</body>
</html>