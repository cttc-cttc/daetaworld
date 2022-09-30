<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>리뷰 작성</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">

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
										<h1>작성된 리뷰 확인</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
											
											<c:if test="${loginInfo.m_type == 1 }">
												<ul class="nav">
													<li><a class="active" href="e_adsCompleted?m_id=${loginInfo.m_id }">
														완료된 공고</a></li>											
													<li><a href="e_wroteReviews?m_id=${loginInfo.m_id }">
														후기 작성한 공고</a></li>											
													<li><a href="e_writtenReviews?m_id=${loginInfo.m_id }">
														후기 작성된 공고</a></li>											
												</ul>
											</c:if>
											<c:if test="${loginInfo.m_type == 2 }">
												<ul class="nav">
													<li><a href="r_adsCompleted?m_id=${loginInfo.m_id }">
														완료된 공고</a></li>
													<li><a class="active"
														href="r_wroteReviews?m_id=${loginInfo.m_id }">
														후기 작성한 공고</a></li>
													<li><a href="r_writtenReviews?m_id=${loginInfo.m_id }">
														후기 	작성된 공고</a></li>
												</ul>
											</c:if>	
												
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">

													<div class="table-responsive"></div>
														<c:set var="w_rate" value="${detail.w_rate}"></c:set>
														<c:if test="${w_rate == 5.0}">
															<c:out value="★★★★★">											
															</c:out>
														</c:if>
														<c:if test="${w_rate == 4.0}">
															<c:out value="★★★★">											
															</c:out>
														</c:if>
														<c:if test="${w_rate == 3.0}">
															<c:out value="★★★">											
															</c:out>
														</c:if>
														<c:if test="${w_rate == 2.0}">
															<c:out value="★★">											
															</c:out>
														</c:if>
														<c:if test="${w_rate == 1.0}">
															<c:out value="★">											
															</c:out>
														</c:if>
													<div>
														<textarea class="col-auto form-control" type="text"
															readonly>${detail.w_comments }</textarea>
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
	
	
	
	<!-- j커리 자리 -->
	

</body>

</html>