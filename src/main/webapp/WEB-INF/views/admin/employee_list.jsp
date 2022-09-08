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
										<h1>회원 관리</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<!-- 구직자 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>구직자 회원정보</h3>
											</div>
											<div class="applications-main-block">
												<div class="applications-table text-middle">
													<table class="table">
														<thead>
															<tr>
																<th class="width-15">ID</th>
																<th class="width-15">닉네임</th>
																<th class="width-12">가입일</th>
																<th class="width-35">경고상태</th>
																<th class="width-23">상세정보</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="list" items="${eList }">
																<tr class="application-item">
																	<td class="application-job"><h3><span class="id-text">${list.e_id }</span></h3></td>
																	<td class="application-employer"><span>${list.e_nick }</span></td>
																	<td class="application-created"><span>${list.e_regdate }</span></td>
																	<c:if test="${list.e_warned == 0 }">
																		<td class="status"><span class="approved">정상</span></td>
																	</c:if>
																	<c:if test="${list.e_warned == 1 || list.e_warned == 2 }">
																		<td class="status"><span class="pending">경고 ${list.e_warned }회</span></td>
																	</c:if>
																	<c:if test="${list.e_warned == 3 }">
																		<td class="status"><span class="rejected">정지</span></td>
																	</c:if>
																	<td class="view-application">
																		<a href="${contextPath }/admin/employee_profile?num=${list.e_number}" class="view-application">상세 회원정보 보기</a>
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
																	<li><a href="${contextPath }/admin/employee_list?page=${pp.getCurrPage()-1}"><i class="fa fa-angle-left"></i></a></li>
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
																		<li><a href="${contextPath }/admin/employee_list?page=${pageNaviNum}">${pageNaviNum }</a></li>
																	</c:if>
																</c:forEach>
																<%-- 다음 버튼 활성/비활성 --%>
																<c:if test="${pp.getCurrPage() != pp.calcLastPage() }">
																	<li><a href="${contextPath }/admin/employee_list?page=${pp.getCurrPage()+1}"><i class="fa fa-angle-right"></i></a></li>
																</c:if>
																<c:if test="${pp.getCurrPage() == pp.calcLastPage() }">
																	<li><a class="disabled-btn"><i class="fa fa-angle-right"></i></a></li>
																</c:if>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 구직자 리스트 End -->
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
	<!-- Placed js at the end of the document so the pages load faster -->
	<!-- All jquery file included here -->
	<script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
</body>
</html>