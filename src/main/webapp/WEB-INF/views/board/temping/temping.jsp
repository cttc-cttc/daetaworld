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
							<div class="table-responsive table-bordered" style="overflow-x: initial;">
								<table class="table table-striped" style="margin: 0; background: #fff;">
									<thead class="thead-dark">
									<tr>
										<th>글번호</th>
										<th>제목</th>
										<th>작성일</th>
										<th>작성자</th>
										<th>조회수</th>
									</tr>
									</thead>
									
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
											<div class="box">
												<div class="box-header with-border">
													<a href="${contextPath }/board/temping/tempingregister" class="btn btn-success">글쓰기</a>
												</div>
											</div>
										</td>
										<td colspan="2" align="center">
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
										<td colspan="2" style="text-align: end;"><input
											class="btn btn-secondary" type="button" value="처음으로" id="index"
											onclick="location.href='${contextPath}'" /></td>
									</tr>

								</table>
							</div>
								
							<!-- search{s} -->
							<div class="row" style="margin-top: 1rem;">
							<div class="col-3">
								<form method="get" action="search2">
									<div class="input-group mb-3">
										<select name="option">
											<option value="b_title">제목</option>
											<option value="m_nick">작성자</option>
										</select>
										<input type="text" name="value" class="form-control" aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-outline-secondary" type="submit">검색</button>
										</div>
									</div>
								</form>
							</div>
							</div>
							<!-- search{e} -->
								
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