<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
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
										<h1>땜빵 게시판</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">땜빵 게시판 목록</div>
							<div class="table-responsive">
								<table class="table table-striped">
									<tr>
										<td>글번호</td>
										<td>제목</td>
										<td>작성일</td>
										<td>작성자</td>
										<td>조회수</td>

									</tr>
									<c:forEach var="board" items="${tempinglist}">
										<tr>
											<td>${board.b_number}</td>
											<td><a
												href="${contextPath}/board/temping/tempingdetail?b_number=${board.b_number}">
													${board.b_title} </a></td>
											<td>${board.b_date}</td>
											<td>${board.m_nick}</td>

											<td><span class="badge">${board.b_hits }</span></td>
										</tr>
									</c:forEach>

									<tr>
										<td>
											<ul>
												<c:if test="${boardPageMaker.prev }">
													<a
														href='<c:url value="/board/temping/temping?page=${boardPageMaker.makeSearch(boardPageMaker.startPage-1) }"/>'>
														이전</a>
												</c:if>
												<c:forEach begin="${boardPageMaker.startPage }"
													end="${boardPageMaker.endPage }" var="pageNum">
													<a
														href='<c:url value="/board/temping/temping?page=${pageNum }"/>'>
														${pageNum }</a>                           
                     </c:forEach>
												<c:if
													test="${boardPageMaker.next && boardPageMaker.endPage > 0 }">
													<a
														href='<c:url value="/board/temping/temping?page=${boardPageMaker.endPage+1 }"/>'>
														</a>
												</c:if>
											</ul>
										</td>
										<td>
										<div class="box">
									<div class="box-header with-border">
										<a href="${contextPath }/board/temping/tempingregister"><h3
												class="box-title">땜빵게시판 글쓰기</h3></a>
									</div>
								</div>
										</td>
										<td colspan="5" align="center"><input
											class="btn btn-success" type="button" value="처음으로" id="index"
											onclick="location.href='${contextPath}'" /></td>
									</tr>

								</table>
								
								<!-- search{s} -->
								<form method="get" action="search2">
									<select name="option">
										<option value="b_title">제목</option>
										
										<option value="m_nick">작성자</option>
										
									</select> <input type="text" name="value"> <input type="submit"
										value="검색">
								</form>
								<!-- search{e} -->
								
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- Dashboard Content Section End -->
			<%@ include file="../../include/footer.jsp"%>
			<!-- Placed js at the end of the document so the pages load faster -->
		</div>
		<!-- Placed js at the end of the document so the pages load faster -->
		<!-- All jquery file included here -->
		<script
			src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
		<script
			src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
		<script
			src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
		<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
		<!-- Use the minified version files listed below for better performance and remove the files listed above -->
		<script
			src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
		<script src="${contextPath}/resources/assets/js/main.js"></script>
</body>
<script>
</script>
</html>