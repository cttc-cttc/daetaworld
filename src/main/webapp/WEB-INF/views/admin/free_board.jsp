<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!-- 싱딘 메뉴 end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<!-- 좌측 메뉴 Start -->
					<%@ include file="../include/admin/left_menu.jsp" %>
					<!-- 좌측 메뉴 End -->
					
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>신고 관리</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<!-- 자유게시판 신고 글 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>자유게시판 글</h3>
											</div>
											<c:if test="${listZero == null }">
												<div class="applications-main-block">
													<div class="applications-table text-middle">
														<table class="table">
															<thead>
																<tr>
																	<th class="width-35 text-left">제목</th>
																	<th class="width-15">작성자</th>
																	<th class="width-12">작성일</th>
																	<th class="width-15">신고사유</th>
																	<th class="width-23">추가작업</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="list" items="${freeBoard }">
																	<tr class="application-item">
																		<td class="application-job text-left">
																			<h3><a class="text-ellipsis" href="${contextPath }/board/free/detail?b_number=${list.b_number }">${list.b_title }</a></h3>
																		</td>
																		<td class="application-employer">
																			<a class="dotted" href="${contextPath }/admin/user_profile?id=${list.m_id }">${list.m_id }</a>
																		</td>
																		<td class="application-created"><span>${list.b_date }</span></td>
																		<td class="status">${list.r_type }</td>
																		<td class="view-application">
																			<a href="javascript:deleteBoard(${list.b_number}, '${list.m_id }')" class="view-application">글삭제</a>&nbsp;&nbsp;
																			<a href="javascript:cancelBoard(${list.re_number})" class="view-application">신고취소</a>
																		</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
													<div class="application-pagination mb-30">
														<div class="row">
															<div class="col-12">
																<ul class="page-pagination justify-content-center">
																	<%-- 이전 버튼 활성/비활성 --%>
																	<c:if test="${pp.getCurrPage() != 1 }">
																		<li><a href="${contextPath }/admin/free_board?page=${pp.getCurrPage()-1}"><i class="fa fa-angle-left"></i></a></li>
																	</c:if>
																	<c:if test="${pp.getCurrPage() == 1 }">
																		<li><a class="disabled-btn"><i class="fa fa-angle-left"></i></a></li>
																	</c:if>
																	<%-- 페이지 버튼 활성/비활성 --%>
																	<c:forEach var="pageNaviNum" items="${pp.calcPageRange() }">
																		<c:if test="${pageNaviNum == pp.getCurrPage()}">
																			<li class="active"><a class="current-btn">${pageNaviNum }</a></li>
																		</c:if>
																		<c:if test="${pageNaviNum != pp.getCurrPage()}">
																			<li><a href="${contextPath }/admin/free_board?page=${pageNaviNum}">${pageNaviNum }</a></li>
																		</c:if>
																	</c:forEach>
																	<%-- 다음 버튼 활성/비활성 --%>
																	<c:if test="${pp.getCurrPage() != pp.calcLastPage() }">
																		<li><a href="${contextPath }/admin/free_board?page=${pp.getCurrPage()+1}"><i class="fa fa-angle-right"></i></a></li>
																	</c:if>
																	<c:if test="${pp.getCurrPage() == pp.calcLastPage() }">
																		<li><a class="disabled-btn"><i class="fa fa-angle-right"></i></a></li>
																	</c:if>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</c:if>
											<c:if test="${listZero != null }">
												<div class="applications-main-block">
													<div class="applications-table text-middle">
														<p style="margin-top: 2rem;">${listZero }</p>
													</div>
												</div>
											</c:if>
										</div>
										<!-- 자유게시판 신고 글 리스트 End -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Dashboard Content Section End -->
		
		<%@ include file="../include/footer.jsp" %>
		<!-- Placed js at the end of the document so the pages load faster -->
	</div>
	<%@ include file="../include/plugin.jsp" %>
	
	<script>
		function deleteBoard(b_num, m_id) {
			if(confirm('신고된 자유게시판 글을 삭제할까요?'))
				location.href = '${contextPath }/admin/warn_free_board?b_num='+b_num+ '&m_id='+m_id;
		}
		
		function cancelBoard(re_num) {
			if(confirm('신고된 자유게시판 글을 취소할까요?'))
				location.href = '${contextPath }/admin/cancel_free_board?re_num='+re_num;
		}
	</script>
</body>
</html>