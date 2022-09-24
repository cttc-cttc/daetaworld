<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자기소개서 관리</title>
<%@ include file="../../include/head.jsp"%>

<style>
	table {
		border-collapse: collapse;
		text-align: center;
	}
	
	td {
		border: 1px solid black;
		padding: 10px;
		text-align: center;
	}
	
	.resume-th {
		border: 1px solid black;
		padding: 10px;
		background-color: lightgrey;
		text-align: center;
	}
	
	#content-style{
		color: red; 
		text-align: right;"
	}
</style>


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
										<h1>선택한 자소서</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="resumeManagement?m_id=${loginInfo.m_id}">등록된 자기소개서 목록</a></li>
													<li><a href="${contextPath}/employeeMapper/resumeRegister">자기소개서 작성</a></li>
												</ul>
											</div>
											<div class="candidate-main-content">
												<div class="field-description"></div>
												
												
												<hr>
												<div class="field-experience">
													<div class="experience-wrap">
														<div class="experience-item">
															<div class="row">
																<div class="col-lg-4 col-md-4">
																	<div class="content-left">
																		<h5 class="company-name theme-color">${resume.i_title}</h5>
																		<span class="date"> 작성시간 : ${resume.i_date}</span>
																	</div>
																</div>
																<div class="col-lg-8 col-md-8">
																	<div class="content-right">
																		<h5 class="position-company bottom">내용</h5>
																		<p>${resume.i_contents}</p>
																	</div>
																	
																	<div class="content-right">
																		<a id="content-style" type="text" href="${contextPath}/employeeMapper/resumeUpdate?i_number=${resume.i_number}&m_id=${loginInfo.m_id}">[수정]</a>
																	</div>
																
																</div>
															</div>
														</div>
													</div>
												</div>
												<hr>

												
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