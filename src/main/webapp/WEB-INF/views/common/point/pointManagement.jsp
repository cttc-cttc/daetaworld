<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>포인트 관리</title>
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
					<%@ include file="../../include/dashBoard.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>포인트</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="pointManagement?m_id=${loginInfo.m_id}">포인트</a></li>
													<li><a href="pointEarned?m_id=${loginInfo.m_id}">포인트 적립 내역</a></li>
													<li><a href="pointDeducted?m_id=${loginInfo.m_id}">포인트 차감 내역</a></li>											
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
														<!-- Single Funfact Start -->
														<div class="row mb-30">														
														<div 
															class="single-funfact funfact-style-two text-center justify-content-center width-100 mb-30">
															<div class="funfact-content">
																<span class="counter theme-color">${point.point }</span><span
																	class="text">${loginInfo.m_nick}님의 현재 포인트</span>
															</div>
															
														</div>				
														</div>											
														<!-- Single Funfact End -->														
													</div>
													<div class="row">
														<div class="col-12">
															<div
																class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																<button type="button" id="pointUse" name="pointUse" 
																	onclick="location.href='${contextPath}/pointMapper/pointUse?m_id=${loginInfo.m_id}'"
																	class="ht-btn theme-btn theme-btn-two mb-xs-20">포인트
																	사용</button>
																<button type="button" id="pointAdd" name="pointAdd" 
																	onclick="location.href='${contextPath}/pointMapper/pointAdd?m_id=${loginInfo.m_id}'" 
																	class="ht-btn theme-btn theme-btn-two mb-xs-20">포인트
																	충전</button>
																<button
																	class="ht-btn theme-btn theme-btn-two transparent-btn-two"
																	onclick="location.href='${contextPath}'">메인으로</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
</body>
</html>