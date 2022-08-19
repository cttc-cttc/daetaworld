<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="include/header.jsp" %>
		</header>
		<!-- 싱딘 메뉴 end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<!-- 좌측 메뉴 Start -->
					<div class="col-xl-2 col-lg-3">
						<div class="dashboard-sidebar">
							<div class="dashboard-menu">
								<ul class="nav">
									<li><h3>회원 관리</h3>
										<ul>
											<li><a class="active" href="dashboard.html"><i class="lnr lnr-users"></i>구직자</a></li>
											<li><a href="message.html"><i class="lnr lnr-user"></i>구인자</a></li>
											<li><a href="job-alerts.html"><i class="lnr lnr-thumbs-down"></i>블랙리스트</a></li>
										</ul></li>
									<li>
										<h3>신고 관리</h3>
										<ul>
											<li><a href="follows.html"><i class="lnr lnr-briefcase"></i>구인공고</a></li>
											<li><a href="applications.html"><i class="lnr lnr-file-empty"></i>자유게시판 글</a></li>
											<li><a href="bookmarks.html"><i class="lnr lnr-pencil"></i>자유게시판 댓글</a></li>
											<li><a href="follows.html"><i class="lnr lnr-file-empty"></i>땜빵게시판 글</a></li>
											<li><a href="follows.html"><i class="lnr lnr-pencil"></i>땜빵게시판 댓글</a></li>
										</ul>
									</li>
									<li>
										<h3>Account</h3>
										<ul>
											<li><a href="profile.html"><i class="lnr lnr-user"></i>Profile</a></li>
											<li><a href="orders.html"><i class="lnr lnr-cart"></i>Orders</a></li>
											<li><a href="login-register.html"><i class="lnr lnr-exit-up"></i>Logout </a></li>
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
										<h1>구직자 회원정보</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-8 col-12">
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>Already Applied</h3>
											</div>
											<div class="applications-main-block">
												<div class="applications-table">
													<table class="table">
														<thead>
															<tr>
																<th class="width-35">Applied Job</th>
																<th class="width-15">Employer</th>
																<th class="width-12">Status</th>
																<th class="width-15">Applied Date</th>
																<th class="width-23 text-right">Action</th>
															</tr>
														</thead>
														<tbody>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">tester</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Unknown</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May 19,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Android & IOS Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Inwave Studio</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May 3,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Tax Manager</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Vsmarttech</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>Apr 27,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">IOS & Android Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Radio Game</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>Apr 19,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Android & IOS Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">HasTech</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May 19,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Construction Worker</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Digital Vine</a></td>
																<td class="status"><span class="rejected">Rejected</span></td>
																<td class="application-created"><span>Dec 4,2019 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Jr. Developer Shopify</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">HasThemes</a></td>
																<td class="status"><span class="rejected">Rejected</span></td>
																<td class="application-created"><span>May 19,2020 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Receptionist</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Digital Vine</a></td>
																<td class="status"><span class="approved">Approved</span></td>
																<td class="application-created"><span>Dec 4,2019 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Recreation & Fitness Worker</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted" href="#">Digital Asset</a></td>
																<td class="status"><span class="approved">Approved</span></td>
																<td class="application-created"><span>Dec 4,2019 </span></td>
																<td class="view-application text-xl-right"><a href="#" class="view-application">View Application</a></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="application-pagination mb-30">
													<div class="row">
														<div class="col-12">
															<ul class="page-pagination justify-content-center">
																<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
																<li class="active"><a href="#">1</a></li>
																<li><a href="#">2</a></li>
																<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="bookmark-applications mb-50">
											<div class="bookmark-heading">
												<h3>Bookmarked</h3>
												<a href="#">View All <i class="lnr lnr-chevron-right"></i></a>
											</div>
											<div class="bookmark-main-block">
												<div class="bookmark-table">
													<table class="table">
														<tbody>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="logo"></a>
																			</div>
																			<div class="job-info">
																				<div class="job-info-inner">
																					<div class="job-info-top">
																						<div class="title-name">
																							<h5 class="job-title">
																								<a href="#">Chief Accountant</a>
																							</h5>
																						</div>
																					</div>
																					<div class="job-meta-two flex-wrap">
																						<div class="field-salary_from">
																							<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
																						</div>
																						<div class="field-datetime">
																							<i class="lnr lnr-clock"></i>8 months ago
																						</div>
																						<div class="field-map">
																							<i class="lnr lnr-map-marker"></i>Hanoi,Hanoi
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div> <!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg" alt="logo"></a>
																			</div>
																			<div class="job-info">
																				<div class="job-info-inner">
																					<div class="job-info-top">
																						<div class="title-name">
																							<h5 class="job-title">
																								<a href="#">Computer System Administrator</a>
																							</h5>
																						</div>
																					</div>
																					<div class="job-meta-two flex-wrap">
																						<div class="field-salary_from">
																							<i class="gj-icon gj-icon-money"></i>$700 - $9,000 / month
																						</div>
																						<div class="field-datetime">
																							<i class="lnr lnr-clock"></i>4 months ago
																						</div>
																						<div class="field-map">
																							<i class="lnr lnr-map-marker"></i>Chicago,Illinois
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div> <!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg" alt="logo"></a>
																			</div>
																			<div class="job-info">
																				<div class="job-info-inner">
																					<div class="job-info-top">
																						<div class="title-name">
																							<h5 class="job-title">
																								<a href="#">Android & IOS Developer</a>
																							</h5>
																						</div>
																					</div>
																					<div class="job-meta-two flex-wrap">
																						<div class="field-salary_from">
																							<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
																						</div>
																						<div class="field-datetime">
																							<i class="lnr lnr-clock"></i>8 months ago
																						</div>
																						<div class="field-map">
																							<i class="lnr lnr-map-marker"></i>Hanoi,Hanoi
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div> <!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg" alt="logo"></a>
																			</div>
																			<div class="job-info">
																				<div class="job-info-inner">
																					<div class="job-info-top">
																						<div class="title-name">
																							<h5 class="job-title">
																								<a href="#">Senior PHP Web Developer</a>
																							</h5>
																						</div>
																					</div>
																					<div class="job-meta-two flex-wrap">
																						<div class="field-salary_from">
																							<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
																						</div>
																						<div class="field-datetime">
																							<i class="lnr lnr-clock"></i>8 months ago
																						</div>
																						<div class="field-map">
																							<i class="lnr lnr-map-marker"></i>Chicago,Illinois
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div> <!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-4 col-12">
										<div class="notifications-applications mb-20 mb-sm-80 mb-xs-80">
											<div class="notifications-heading">
												<h3>Notifications</h3>
											</div>
											<div class="notifications-main-block">
												<div class="notification-listing">
													<div class="empty">
														<h3>There are no notifications</h3>
														<p>Your latest notifications will be displayed here</p>
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
		
		<%@ include file="include/footer.jsp" %>
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