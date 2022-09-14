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
										<!-- 구인공고 신고 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>구인공고</h3>
											</div>
											<div class="applications-main-block">
												<div class="applications-table text-middle">
													<table class="table">
														<thead>
															<tr>
																<th class="width-35 text-left">가게명</th>
																<th class="width-15">작성자</th>
																<th class="width-12">작성일</th>
																<th class="width-15">신고사유</th>
																<th class="width-23">추가작업</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="jobAdsReport" items="${jobAds }">
																<tr class="application-item">
																	<td class="application-job text-left">
																		<h3><a class="text-ellipsis" href="${contextPath }/jobAds?num=${jobAdsReport.a_number }">${jobAdsReport.s_name }</a></h3>
																	</td>
																	<td class="application-employer">
																		<a class="dotted" href="${contextPath }/admin/employer_profile?id=${jobAdsReport.m_id }">${jobAdsReport.m_id }</a>
																	</td>
																	<td class="application-created"><span>${jobAdsReport.s_date }</span></td>
																	<td class="status">${jobAdsReport.r_type }</td>
																	<td class="view-application">
																		<a href="#" class="view-application">공고삭제${jobAdsReport.a_number }</a>&nbsp;&nbsp;
																		<a href="#" class="view-application">신고취소${jobAdsReport.re_number }</a>
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
																	<li><a href="${contextPath }/admin/job_ads?page=${pp.getCurrPage()-1}"><i class="fa fa-angle-left"></i></a></li>
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
																		<li><a href="${contextPath }/admin/job_ads?page=${pageNaviNum}">${pageNaviNum }</a></li>
																	</c:if>
																</c:forEach>
																<%-- 다음 버튼 활성/비활성 --%>
																<c:if test="${pp.getCurrPage() != pp.calcLastPage() }">
																	<li><a href="${contextPath }/admin/job_ads?page=${pp.getCurrPage()+1}"><i class="fa fa-angle-right"></i></a></li>
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
										<!-- 구인공고 신고 리스트 End -->
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