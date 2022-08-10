<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>관리자 페이지</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link href="${contextPath}/resources/assets/images/favicon.ico" type="img/x-icon"
	rel="shortcut icon">
<!-- All css files are included here. -->
<link rel="stylesheet" href="${contextPath}/resources/assets/css/vendor/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath}/resources/assets/css/vendor/iconfont.min.css">
<link rel="stylesheet" href="${contextPath}/resources/assets/css/vendor/helper.css">
<!-- <link rel="stylesheet" href="${contextPath}/resources/assets/css/plugins/plugins.css">-->
<!-- <link rel="stylesheet" href="${contextPath}/resources/assets/css/style.css">-->
<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<link rel="stylesheet" href="${contextPath}/resources/assets/css/plugins/plugins.min.css">
<link rel="stylesheet" href="${contextPath}/resources/assets/css/style.min.css">
<!-- Modernizr JS -->
<script src="${contextPath}/resources/assets/js/vendor/modernizr-3.10.0.min.js"></script>
</head>
<body class="template-color-1">
	<div id="main-wrapper">
		<!--Header section start-->
		<header
			class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<div class="main-header">
				<div class="container-fluid pl-50 pl-lg-15 pl-md-15 pr-0">
					<div class="row align-items-center no-gutters">
						<!--Logo start-->
						<div class="col-xl-2 col-lg-2 col-12">
							<div class="logo">
								<a href="./"><img src="${contextPath}/resources/images/banner.png" alt=""></a>
							</div>
						</div>
						<!--Logo end-->
						<!--Menu start-->
						<div class="col-xl-7 col-lg-7 col-12">
							<nav class="main-menu">
								<ul>
									<li><a href="index.html">Home <small
											class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="index.html">Home V1</a></li>
											<li><a href="index-2.html">Home V2</a></li>
											<li><a href="index-3.html">Home V3</a></li>
											<li><a href="index-4.html">Home V4</a></li>
										</ul></li>
									<li><a href="job-listing.html">Jobs <small
											class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="job-listing.html">Jobs Listing</a></li>
											<li><a href="job-with-map.html">Jobs With Map</a></li>
											<li><a href="job-details.html">Job Detail <small
													class="icon-arrow"></small></a>
											<ul class="sub-menu">
													<li><a href="job-details.html">Job Detail V1</a></li>
													<li><a href="job-details-two.html">Job Detail V2</a></li>
												</ul></li>
										</ul></li>
									<li><a href="candidates-listing.html">Candidates <small
											class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="candidates-listing.html">Candidates
													Listing</a></li>
											<li><a href="candidate-details.html">Candidate
													Detail <small class="icon-arrow"></small>
											</a>
											<ul class="sub-menu">
													<li><a href="candidate-details.html">Candidate
															Details V1</a></li>
													<li><a href="candidate-details-two.html">Candidate
															Details V2</a></li>
												</ul></li>
										</ul></li>
									<li><a href="#">Employers <small class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="employer-listing.html">Employers
													Listing</a></li>
											<li><a href="employer-details.html">Employer Details
													<small class="icon-arrow"></small>
											</a>
											<ul class="sub-menu">
													<li><a href="employer-details.html">Employer
															Detail V1</a></li>
													<li><a href="employer-details-two.html">Employer
															Detail V2</a></li>
												</ul></li>
										</ul></li>
									<li><a href="blog.html">Blog <small class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="blog-details.html">Single Post</a></li>
										</ul></li>
									<li><a href="#">Pages <small class="icon-arrow"></small></a>
									<ul class="sub-menu">
											<li><a href="about.html">About us</a></li>
											<li><a href="contact.html">Contact Us</a></li>
											<li><a href="faq.html">FAQS</a></li>
											<li><a href="pricing.html">Pricing & Plan</a></li>
											<li><a href="login-register.html">Login & Register</a></li>
											<li><a href="dashboard.html">Dashboard</a></li>
											<li><a href="404.html">404 Error</a></li>
											<li><a href="shop.html">Shop <small
													class="icon-arrow"></small></a>
											<ul class="sub-menu">
													<li><a href="shop.html">Shop</a></li>
													<li><a href="product-details.html">Product Details</a></li>
													<li><a href="cart.html">Cart</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="wishlist.html">Wishlist</a></li>
												</ul></li>
										</ul></li>
								</ul>
							</nav>
						</div>
						<!--Menu end-->
						<!-- Cart & Search Area Start -->
						<div class="col-xl-3 col-lg-3 col-12">
							<div class="header-btn-action d-flex justify-content-end">
								<div class="btn-action-wrap d-flex">
									<div class="jp-author item">
										<a href="login-register.html"><i class="lnr lnr-user"></i><span>Login</span></a>
									</div>
									<div class="jp-author-action item">
										<a href="#quick-view-modal-container" data-toggle="modal"><span>Employer</span><span
											class="fw-400">Post a job</span></a>
									</div>
								</div>
							</div>
						</div>
						<!-- Cart & Search Area End -->
					</div>
				</div>
			</div>
		</header>
		<!--Header section end-->
		<!--Header Mobile section start-->
		<header class="header-mobile bg_color--2 d-block d-lg-none">
			<div class="header-bottom menu-right">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="header-mobile-navigation d-block d-lg-none">
								<div class="row align-items-center">
									<div class="col-3 col-md-3">
										<div class="mobile-navigation text-right">
											<div class="header-icon-wrapper">
												<ul class="icon-list justify-content-start">
													<li class="popup-mobile-click"><a
														href="javascript:void(0)"><i class="lnr lnr-menu"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-6 col-md-6">
										<div class="header-logo text-center">
											<a href="index.html"><img
												src="${contextPath}/resources/assets/images/logo-mobile.png" class="img-fluid" alt=""></a>
										</div>
									</div>
									<div class="col-3 col-md-3">
										<div class="mobile-navigation text-right">
											<div class="header-icon-wrapper">
												<ul class="icon-list justify-content-end">
													<li><div class="header-cart-icon">
															<a href="#" class="header-search-toggle"><i
																class="lnr lnr-magnifier"></i></a>
														</div>
														<div class="header-search-form">
															<form action="#">
																<input type="text" placeholder="Type and hit enter">
																<button>
																	<i class="lnr lnr-magnifier"></i>
																</button>
															</form>
														</div></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!--Header Mobile section end-->
		<!-- Start Popup Menu -->
		<div class="popup-mobile-manu popup-mobile-visiable">
			<div class="inner">
				<div class="mobileheader">
					<div class="logo">
						<a href="index.html"><img src="${contextPath}/resources/assets/images/logo-mobile.png"
							alt="Multipurpose"></a>
					</div>
					<a class="mobile-close" href="#"></a>
				</div>
				<div class="menu-content">
					<ul class="menulist object-custom-menu">
						<li class="has-mega-menu"><a href="#"><span>Home</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="index.html"><span>Home V1</span></a></li>
								<li><a href="index-2.html"><span>Home V2</span></a></li>
								<li><a href="index-3.html"><span>Home V3</span></a></li>
								<li><a href="index-4.html"><span>Home V4</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Jobs</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="job-listing.html"><span>Jobs
											Listing</span></a></li>
								<li><a href="job-with-map.html"><span>Jobs With
											Map</span></a></li>
								<li><a href="job-details.html"><span>Job Detail
											V1</span></a></li>
								<li><a href="job-details-two.html"><span>Job
											Detail V2</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Candidates</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="candidates-listing.html"><span>Candidates
											Listing</span></a></li>
								<li><a href="candidate-details.html"><span>Candidate
											Details V1</span></a></li>
								<li><a href="candidate-details-two.html"><span>Candidate
											Details V2</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Employers</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="employer-listing.html"><span>Employers
											Listing</span></a></li>
								<li><a href="employer-details.html"><span>Employer
											Detail V1</span></a></li>
								<li><a href="employer-details-two.html"><span>Employer
											Detail V2</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Blog</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="blog.html"><span>Blog</span></a></li>
								<li><a href="blog-details.html"><span>Blog
											Details</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Pages</span></a>
						<!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="about.html"><span>About Us</span></a></li>
								<li><a href="contact.html"><span>Contact Us</span></a></li>
								<li><a href="faq.html"><span>FAQS</span></a></li>
								<li><a href="pricing.html"><span>Pricing & Plan</span></a></li>
								<li><a href="login-register.html"><span>Login /
											Register</span></a></li>
								<li><a href="dashboard.html"><span>Dashboard</span></a></li>
								<li><a href="shop.html"><span>Shop</span></a></li>
								<li><a href="product-details.html"><span>Product
											Details</span></a></li>
								<li><a href="cart.html"><span>Cart</span></a></li>
								<li><a href="checkout.html"><span>Checkout</span></a></li>
								<li><a href="wishlist.html"><span>Wishlist</span></a></li>
								<li><a href="404.html"><span>404 Error</span></a></li>
							</ul>
							<!-- End Dropdown Menu --></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Popup Menu -->
		<!-- Bottom Navbar Mobile Start -->
		<div class="bottom-navbar-mobile section d-block d-lg-none">
			<nav>
				<ul class="list-actions">
					<li><a class="toggle-btn active" href="index.html"><span><i
								class="lnr lnr-home"></i></span><span class="text">Home</span></a></li>
					<li><a class="toggle-btn toggle-btn-js"
						data-target="#job-list-mobile-id" href="#"><span><i
								class="lnr lnr-list"></i></span><span class="text">Jobs list</span></a></li>
					<li><a href="login-register.html"><span><i
								class="lnr lnr-heart"></i></span><span class="text">Save</span></a></li>
					<li><a class="toggle-btn-two toggle-btn-js"
						data-target="#notifications-mobile-id" href="#"><span><i
								class="lnr lnr-alarm"></i></span><span class="text">Notifications</span></a></li>
					<li><a href="login-register.html"><span><i
								class="lnr lnr-user"></i></span><span class="text">Account</span></a></li>
				</ul>
			</nav>
		</div>
		<!-- Bottom Navbar Mobile End -->
		<!-- Bottom Navbar Mobile Popup Start -->
		<div class="mobile-popup">
			<div class="job-list-mobile" id="job-list-mobile-id">
				<div class="heading">
					<div class="title">
						<i class="lnr lnr-list"></i>
						<h3>All Jobs list</h3>
					</div>
					<a class="view-all" href="#">See all jobs</a>
				</div>
				<div class="content-popup-scroll">
					<ul class="list-item">
						<li><a href="job-listing.html"><i class="lnr lnr-printer"></i>Accounting
						</a></li>
						<li><a href="job-listing.html"><i
								class="lnr lnr-film-play"></i>Broadcasting </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-phone"></i>Customer
								Service </a></li>
						<li><a href="job-listing.html"><i
								class="lnr lnr-bullhorn"></i>Digital Marketing </a></li>
						<li><a href="job-listing.html"><i
								class="lnr lnr-chart-bars"></i>Finance & Accounting </a></li>
						<li><a href="job-listing.html"><i
								class="lnr lnr-smartphone"></i>Game Mobile </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-picture"></i>Graphics
								& Design </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-home"></i>Graphics
								& Design </a></li>
						<li><a href="job-listing.html"><i
								class="lnr lnr-database"></i>Medical Doctor </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-dinner"></i>Restaurant
						</a></li>
					</ul>
				</div>
			</div>
			<div class="notifications-mobile" id="notifications-mobile-id">
				<div class="heading">
					<div class="title">
						<i class="lnr lnr-list"></i>
						<h3>All Notifications</h3>
					</div>
					<a class="view-all" href="#">See all jobs</a>
				</div>
				<div class="content-popup-scroll">
					<ul class="list-item">
						<li><a href="login-register.html"><i class="lnr lnr-book"></i><span><b
									class="highlight">Register now</b>to reach dream jobs easier.</span></a></li>
						<li><a href="job-with-map.html"><i class="lnr lnr-book"></i><span><b
									class="highlight">Job suggestion</b>you might be interested
									based on your profile.</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Bottom Navbar Mobile Popup End -->
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<div class="col-xl-2 col-lg-3">
						<div class="dashboard-sidebar">
							<div class="dashboard-menu">
								<ul class="nav">
									<li><h3>회원 관리</h3>
										<ul>
											<li><a class="active" href="dashboard.html"><i 
													class="lnr lnr-users"></i>구직자</a></li>
											<li><a href="message.html"><i 
													class="lnr lnr-user"></i>구인자</a></li>
											<li><a href="job-alerts.html"><i 
													class="lnr lnr-thumbs-down"></i>블랙리스트</a></li>
										</ul>
									</li>
									<li>
										<h3>신고 관리</h3>
										<ul>
											<li><a href="follows.html"><i
													class="lnr lnr-briefcase"></i>구인공고</a></li>
											<li><a href="applications.html"><i
													class="lnr lnr-file-empty"></i>자유게시판 글</a></li>
											<li><a href="bookmarks.html"><i
													class="lnr lnr-pencil"></i>자유게시판 댓글</a></li>
											<li><a href="follows.html"><i
													class="lnr lnr-file-empty"></i>땜빵게시판 글</a></li>
											<li><a href="follows.html"><i
													class="lnr lnr-pencil"></i>땜빵게시판 댓글</a></li>
										</ul>
									</li>
									<li>
										<h3>Account</h3>
										<ul>
											<li><a href="profile.html"><i 
													class="lnr lnr-user"></i>Profile</a></li>
											<li><a href="orders.html"><i 
													class="lnr lnr-cart"></i>Orders</a></li>
											<li><a href="login-register.html"><i
													class="lnr lnr-exit-up"></i>Logout </a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
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
																<td class="application-employer"><a class="dotted"
																	href="#">Unknown</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May
																		19,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Android & IOS Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Inwave Studio</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May
																		3,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Tax Manager</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Vsmarttech</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>Apr
																		27,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">IOS & Android Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Radio Game</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>Apr
																		19,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Android & IOS Developer</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">HasTech</a></td>
																<td class="status"><span class="pending">Pending</span></td>
																<td class="application-created"><span>May
																		19,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Construction Worker</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Digital Vine</a></td>
																<td class="status"><span class="rejected">Rejected</span></td>
																<td class="application-created"><span>Dec
																		4,2019 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Jr. Developer Shopify</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">HasThemes</a></td>
																<td class="status"><span class="rejected">Rejected</span></td>
																<td class="application-created"><span>May
																		19,2020 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Receptionist</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Digital Vine</a></td>
																<td class="status"><span class="approved">Approved</span></td>
																<td class="application-created"><span>Dec
																		4,2019 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3>
																		<a href="#">Recreation & Fitness Worker</a>
																	</h3></td>
																<td class="application-employer"><a class="dotted"
																	href="#">Digital Asset</a></td>
																<td class="status"><span class="approved">Approved</span></td>
																<td class="application-created"><span>Dec
																		4,2019 </span></td>
																<td class="view-application text-xl-right"><a
																	href="#" class="view-application">View Application</a></td>
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
																	<div
																		class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img
																					src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg"
																					alt="logo"></a>
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
																							<i class="gj-icon gj-icon-money"></i>$500 -
																							$1,000 / month
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
																	</div>
																	<!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a
																	href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div
																		class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img
																					src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg"
																					alt="logo"></a>
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
																							<i class="gj-icon gj-icon-money"></i>$700 -
																							$9,000 / month
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
																	</div>
																	<!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a
																	href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div
																		class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img
																					src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg"
																					alt="logo"></a>
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
																							<i class="gj-icon gj-icon-money"></i>$500 -
																							$1,000 / month
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
																	</div>
																	<!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a
																	href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
															<tr class="bookmark-item">
																<td class="bookmark-job">
																	<!-- Single Job Start -->
																	<div
																		class="single-job style-two border-0 p-0 bg-transparent">
																		<div class="info-top">
																			<div class="job-image ml-0 mr-10 mr-xs-0">
																				<a href="job-details.html"><img
																					src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg"
																					alt="logo"></a>
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
																							<i class="gj-icon gj-icon-money"></i>$500 -
																							$1,000 / month
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
																	</div>
																	<!-- Single Job End -->
																</td>
																<td class="delete-bookmark text-xl-right"><a
																	href="#"><i class="lnr lnr-trash"></i></a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-4 col-12">
										<div
											class="notifications-applications mb-20 mb-sm-80 mb-xs-80">
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