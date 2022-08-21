<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!--Header section start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!--Header section end-->
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<!-- 좌측 메뉴 Start -->
					<div class="col-xl-2 col-lg-3">
						<div class="dashboard-sidebar">
							<div class="dashboard-menu">
								<ul class="nav">
									<li>
										<h3>회원 관리</h3>
										<ul>
											<li><a href="${contextPath }/admin/employee_info"><i class="lnr lnr-users"></i>구직자</a></li>
											<li><a href="${contextPath }/admin/employer_info"><i class="lnr lnr-user"></i>구인자</a></li>
											<li><a class="active" href="${contextPath }/admin/blacklist"><i class="lnr lnr-thumbs-down"></i>블랙리스트</a></li>
										</ul>
									</li>
									<li>
										<h3>신고 관리</h3>
										<ul>
											<li><a href="${contextPath }/admin/job_ads"><i class="lnr lnr-briefcase"></i>구인공고</a></li>
											<li><a href="${contextPath }/admin/free_board"><i class="lnr lnr-file-empty"></i>자유게시판 글</a></li>
											<li><a href="${contextPath }/admin/free_comment"><i class="lnr lnr-pencil"></i>자유게시판 댓글</a></li>
											<li><a href="${contextPath }/admin/temping_board"><i class="lnr lnr-file-empty"></i>땜빵게시판 글</a></li>
											<li><a href="${contextPath }/admin/temping_comment"><i class="lnr lnr-pencil"></i>땜빵게시판 댓글</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 좌측 메뉴 End -->
					
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>프로필 정보</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="profile.html">My profile</a></li>
													<li><a href="resume-profile.html">Resume profile</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">
																	<label class="d-block"><span>Avatar</span></label><img src="${contextPath}/resources/assets/images/author/author1.jpg" alt="">
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="first-name">First Name <span>*</span></label><input type="text" id="first-name" name="first-name" placeholder="First Name" value="Jhon">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="last-name">Last Name <span>*</span></label><input type="text" id="last-name" name="last-name" placeholder="Last Name" value="anna">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="email">Email <span>*</span></label><input type="email" id="email" name="email" placeholder="Enter your Email" value="candidate@localhost.com">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="url">Url <span>*</span></label><input type="url" id="url" name="url" placeholder="Enter your Url" value="https://bootstrap.hasthemes.com/">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="address-one">Address line 1</label><input type="text" id="address-one" name="address-one" placeholder="Enter your Address" value="">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="address-two">Address line 2</label><input type="text" id="address-two" name="address-two" placeholder="Enter your Address" value="">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="new-password">New Password</label><input type="password" id="new-password" name="new-password" placeholder="" value="">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="confirm-password">Confirm Password</label><input type="password" id="confirm-password" name="confirm-password" placeholder="" value="">
																		</div>
																		<!-- Single Input End -->
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-12">
																<div class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button class="ht-btn theme-btn theme-btn-two mb-xs-20">Update Profile</button>
																	<button class="ht-btn theme-btn theme-btn-two transparent-btn-two">Delete Account</button>
																</div>
															</div>
														</div>
													</form>
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
		
		<%@ include file="../include/footer.jsp" %>
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