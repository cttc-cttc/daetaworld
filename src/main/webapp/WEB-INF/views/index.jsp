<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>대타천국</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link href="${contextPath}/resources/assets/images/favicon.ico" type="img/x-icon" rel="shortcut icon">
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
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
</head>
<body class="template-color-3">
	<div id="main-wrapper">
		<!--Header section start-->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<div class="main-header">
				<div class="container pl-15 pl-md-0 pr-15 pr-md-0">
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
							<nav class="main-menu padding-16">
								<ul class="menu-ul">
									<li><a href="#">일반 구인</a></li>
									<li><a href="#">선호 구인</a></li>
									<li><a href="#">긴급 구인</a></li>
									<li><a href="#">농어촌</a></li>
									<li><a href="#">돌봄</a></li>
									<li><a href="#">게시판<small class="icon-arrow"></small></a>
										<ul class="sub-menu">
											<li><a href="#">자유게시판</a></li>
											<li><a href="#">땜빵게시판</a></li>
											<li><a href="adminPage">관리자 화면</a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
						<!--Menu end-->
						<!-- Cart & Search Area Start -->
						<div class="col-xl-3 col-lg-3 col-12">
							<div class="header-btn-action d-flex justify-content-end">
								<div class="btn-action-wrap d-flex">
									<div class="jp-author item">
										<a href="#"><i class="lnr lnr-user"></i><span>로그인</span></a>
									</div>
									<div class="jp-author-action-two item">
										<a class="ht-btn header-btn" href="#">회원가입</a>
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
		<header class="header-mobile bg_color--7 d-block d-lg-none">
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
													<li class="popup-mobile-click"><a href="javascript:void(0)"><i class="lnr lnr-menu"></i></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-6 col-md-6">
										<div class="header-logo text-center">
											<a href="index.html"><img src="${contextPath}/resources/assets/images/logo-mobile.png" class="img-fluid" alt=""></a>
										</div>
									</div>
									<div class="col-3 col-md-3">
										<div class="mobile-navigation text-right">
											<div class="header-icon-wrapper">
												<ul class="icon-list justify-content-end">
													<li><div class="header-cart-icon">
															<a href="#" class="header-search-toggle"><i class="lnr lnr-magnifier"></i></a>
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
						<a href="index.html"><img src="${contextPath}/resources/assets/images/logo-mobile.png" alt="Multipurpose"></a>
					</div>
					<a class="mobile-close" href="#"></a>
				</div>
				<div class="menu-content">
					<ul class="menulist object-custom-menu">
						<li class="has-mega-menu"><a href="#"><span>Home</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="index.html"><span>Home V1</span></a></li>
								<li><a href="index-2.html"><span>Home V2</span></a></li>
								<li><a href="index-3.html"><span>Home V3</span></a></li>
								<li><a href="index-4.html"><span>Home V4</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Jobs</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="job-listing.html"><span>Jobs Listing</span></a></li>
								<li><a href="job-with-map.html"><span>Jobs With Map</span></a></li>
								<li><a href="job-details.html"><span>Job Detail V1</span></a></li>
								<li><a href="job-details-two.html"><span>Job Detail V2</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Candidates</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="candidates-listing.html"><span>Candidates Listing</span></a></li>
								<li><a href="candidate-details.html"><span>Candidate Details V1</span></a></li>
								<li><a href="candidate-details-two.html"><span>Candidate Details V2</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Employers</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="employer-listing.html"><span>Employers Listing</span></a></li>
								<li><a href="employer-details.html"><span>Employer Detail V1</span></a></li>
								<li><a href="employer-details-two.html"><span>Employer Detail V2</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Blog</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="blog.html"><span>Blog</span></a></li>
								<li><a href="blog-details.html"><span>Blog Details</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
						<li class="has-mega-menu"><a href="#"><span>Pages</span></a> <!-- Start Dropdown Menu -->
							<ul class="object-submenu">
								<li><a href="about.html"><span>About Us</span></a></li>
								<li><a href="contact.html"><span>Contact Us</span></a></li>
								<li><a href="faq.html"><span>FAQS</span></a></li>
								<li><a href="pricing.html"><span>Pricing & Plan</span></a></li>
								<li><a href="login-register.html"><span>Login / Register</span></a></li>
								<li><a href="dashboard.html"><span>Dashboard</span></a></li>
								<li><a href="shop.html"><span>Shop</span></a></li>
								<li><a href="product-details.html"><span>Product Details</span></a></li>
								<li><a href="cart.html"><span>Cart</span></a></li>
								<li><a href="checkout.html"><span>Checkout</span></a></li>
								<li><a href="wishlist.html"><span>Wishlist</span></a></li>
								<li><a href="404.html"><span>404 Error</span></a></li>
							</ul> <!-- End Dropdown Menu --></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Popup Menu -->
		<!-- Bottom Navbar Mobile Start -->
		<div class="bottom-navbar-mobile section d-block d-lg-none">
			<nav>
				<ul class="list-actions">
					<li><a class="toggle-btn active" href="index-3.html"><span><i class="lnr lnr-home"></i></span><span class="text">Home</span></a></li>
					<li><a class="toggle-btn toggle-btn-js" data-target="#job-list-mobile-id" href="#"><span><i class="lnr lnr-list"></i></span><span class="text">Jobs list</span></a></li>
					<li><a href="login-register.html"><span><i class="lnr lnr-heart"></i></span><span class="text">Save</span></a></li>
					<li><a class="toggle-btn-two toggle-btn-js" data-target="#notifications-mobile-id" href="#"><span><i class="lnr lnr-alarm"></i></span><span class="text">Notifications</span></a></li>
					<li><a href="login-register.html"><span><i class="lnr lnr-user"></i></span><span class="text">Account</span></a></li>
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
						<li><a href="job-listing.html"><i class="lnr lnr-printer"></i>Accounting </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-film-play"></i>Broadcasting </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-phone"></i>Customer Service </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-bullhorn"></i>Digital Marketing </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-chart-bars"></i>Finance & Accounting </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-smartphone"></i>Game Mobile </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-picture"></i>Graphics & Design </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-home"></i>Graphics & Design </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-database"></i>Medical Doctor </a></li>
						<li><a href="job-listing.html"><i class="lnr lnr-dinner"></i>Restaurant </a></li>
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
						<li><a href="login-register.html"><i class="lnr lnr-book"></i><span><b class="highlight">Register now</b>to reach dream jobs easier.</span></a></li>
						<li><a href="job-with-map.html"><i class="lnr lnr-book"></i><span><b class="highlight">Job suggestion</b>you might be interested based on your profile.</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Bottom Navbar Mobile Popup End -->
		
		<!-- 급구 리스트 start-->
		<div class="hero-section section position-relative">
			<!--Hero Item start-->
			<div class="hero-item hero-item-three bg_image-v3">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<!--Hero Content start-->
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<div class="hero-content-4 left">
											<h2 class="title">대타가 필요할 땐 대타천국</h2>
											<h3 class="sub-title"><span id="sub-title2">오늘 할 대타를 내일로 미루지 말자!!</span></h3>
											<p id="urgency-title"><i class="lnr lnr-bullhorn" id="urgency-icon"></i>&nbsp;지금 뜨는 급구 리스트</p>
										</div>
									</div>
								</div>
								<div class="row employer-slider-two">
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-1.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">밥스터치 수원점</a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">4.3</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 수원시 팔달구 덕영대로 899 </span><span class="count-job theme-color">2 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-2.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">에튀드 네일 평택점</a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">4.8</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 평택시 비전동 EA아울렛 7층 </span><span class="count-job theme-color">1 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-3.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">루트 스튜디오 군포점 </a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">4.2</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 군포시 당동 740-2번지 </span><span class="count-job theme-color">2 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-4.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">Vsmarttech </a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">3.9</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>London Euston,London,UK </span><span class="count-job theme-color">1 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-5.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">Radio Game </a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">4.5</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>New York,NY,USA </span><span class="count-job theme-color">2 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
								</div>
							</div>
							<!--Hero Content end-->
						</div>
					</div>
				</div>
			</div>
			<!--Hero Item end-->
		</div>
		<!-- 급구 리스트 end-->
		<div class="container">
			<div class="row">
				<hr class="hr-style">
			</div>
		</div>

		<!-- 일반구인 리스트 Start -->
		<div class="job-section section pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">일반 구인공고 리스트</h3>
							<p><i class="fas fa-users"></i>&nbsp;전국의 사장님들이 당신을 기다립니다</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job" href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="employer-details.html">Chief Accountant</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Shippo Company</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
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
										<div class="job-skill-tag">
											<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a href="#">Ruby</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label partTime ml-20 mr-20">Part Time</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Senior Data Engineer</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Radio Game</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
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
										<div class="job-skill-tag">
											<a href="#">CSS</a><a href="#">PHP</a><a href="#">WordPress</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<a class="job-type-label ml-20 mr-20">Remote</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Construction Worker</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Digital Vine</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
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
										<div class="job-skill-tag">
											<a href="#">Angular</a><a href="#">ASP.NET</a><a href="#">Banner</a><a href="#">C++</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Unity Developer</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Vsmarttech</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
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
										<div class="job-skill-tag">
											<a href="#">NodeJS</a><a href="#">PHP</a><a href="#">Python</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job" href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Receptionist</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Digital Vine</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
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
										<div class="job-skill-tag">
											<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a href="#">Ruby</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo6.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">iOS Developer</a>
												</h3>
												<div class="employer-name">
													<a href="job-details.html">InwaveThemes</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>8 months ago
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>Seville,Andalusia
											</div>
										</div>
										<div class="job-skill-tag">
											<a href="#">app</a><a href="#">ios</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Job End -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="all-job">
							<p>
								전체 구인공고를 보시려면 우측 링크를 클릭하세요. <a href="#">일반구인 전체보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 일반구인 리스트 End -->
		
		<!-- 최저시급 Start -->
		<div class="featured-employer section bg-image-proparty bg_image--2 pt-110 pt-lg-90 pt-md-70 pt-sm-50 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50 balance-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">2022년도 최저시급 : <span id="balance">9,160</span>원</h3>
						</div>
					</div>
					<div class="col-lg-12 middle-align">
						<div class="col-lg-6">
							<table class="table table-bordered" id="balance-table">
								<thead class="thead-dark">
									<tr>
										<th scope="col"></th>
										<th scope="col">주간</th>
										<th scope="col">야간</th>
									</tr>
								</thead>
								<tbody>
									<tr class="tr-background">
										<th scope="row">시급</th>
										<td><strong>9,160</strong>원</td>
										<td><strong>13,740</strong>원</td>
									</tr>
									<tr class="tr-background">
										<th scope="row">일급</th>
										<td><strong>73,280</strong>원</td>
										<td><strong>109,920</strong>원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-lg-12 middle-align">
						<div class="col-lg-6">
							<span>*<strong>일급</strong> 하루 8시간 근무 기준</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 최저시급 End -->
		
		<!-- 직업추천 & 대타자 평점 랭킹 Start -->
		<div class="blog-section section pb-120 pb-lg-100 pb-md-80 pb-sm-50 pb-xs-40">
			<div class="container st-border">
				<div class="row no-gutters">
					<div class="col-lg-6">
						<!-- 직업추천 Start -->
						<div class="simple-work">
							<div class="section-title-two text-left">
								<h3 class="title">직업 추천</h3>
							</div>
							<div class="work-list-wrap">
								<div class="single-list-work mb-20">
									<div class="work-content">
										<h4 class="title">오늘 당신에게 맞는 직업은?</h4>
									</div>
									<div class="work-content margin-middle">
										<a class="ht-btn header-btn" href="#">직업 추천받기</a>
									</div>
								</div>
								
								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon1.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">활동성</h4>
										<p>당신은 몸을 많이 움직이는 활동적인 일을 원하거나, 그렇지 않은 사무적인 일을 원할 수 있습니다.</p>
									</div>
								</div>
								<!-- Single List Work End -->

								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon2.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">고객 응대</h4>
										<p>당신은 고객들을 직접 응대하는 일을 원하거나, 그렇지 않은 비대면 업무를 원할 수 있습니다.</p>
									</div>
								</div>
								<!-- Single List Work End -->

								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon3.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">접근성</h4>
										<p>당신은 거주지 주변의 가까운 곳을 선호하거나, 오늘 하루는 멀리 나가보는 것을 선호할 수 있습니다.</p>
									</div>
								</div>
								<!-- Single List Work End -->

							</div>
						</div>
						<!-- 직업추천 End -->
					</div>
					<div class="col-lg-6">
						<!-- 대타자 평점 랭킹 Start -->
						<div class="blog-area">
							<div class="section-title-two text-left">
								<h3>대타자 평점 랭킹</h3>
							</div>

							<div class="blog-wrap">
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img src="${contextPath}/resources/assets/images/blog/blog1.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span> <span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">The Reason Why Software Developer Repeats As ‘Best Job’</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img src="${contextPath}/resources/assets/images/blog/blog2.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span> <span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">7 Answers to the Most Frequently Asked Questions About Job</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img src="${contextPath}/resources/assets/images/blog/blog1.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span> <span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">The Question Everyone Working in Job Should Know to Answer</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
							</div>
							<div class="all-articale">
								<a href="#">Browse all articles <i class="lnr lnr-chevron-right"></i></a>
							</div>
						</div>
						<!-- 대타자 평점 랭킹 End -->
					</div>
				</div>
			</div>
		</div>
		<!-- 직업추천 & 대타자 평점 랭킹 End -->

		<!-- 농어촌 & 돌봄 구인 Start -->
		<div class="cta-section section bg_color--4 pt-50 pb-50">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-8 col-sm-12 col-12">
						<div class="call-content text-center text-lg-left">
							<h3 class="title"><span>대타천국에서는</span></h3>
							<h3 class="title">
								농어촌 구인 <span>&</span> 돌봄 구인<span>에도 지원할 수 있습니다.</span>
							</h3>
							<p>사회적 인식이 얕은 곳 까지 도움의 손길을 내어 드리고 싶습니다.</p>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12">
						<div class="call-btn text-center text-lg-right">
							<a class="ht-btn green-btn link-btn" href="#">농어촌 구인 지원하기</a>
							<a class="ht-btn green-btn link-btn" href="#">돌봄 구인 지원하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 농어촌 & 돌봄 구인 End -->
		
		<!--Footer section start-->
		<footer class="footer-section section bg-image-proparty bg_image--2">
			<!-- Footer Top Section Start -->
			<div class="footer-top-section section pb-80 pb-lg-60 pb-md-40 pb-sm-20 pb-xs-15">
				<div class="container st-border pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45">
					<div class="row">
						<div class="col-xl-4 col-lg-3 col-md-6">
							<!-- Footer Widget Start -->
							<div class="footer-widget mb-30">
								<h6 class="title">Contact Info</h6>
								<div class="address">
									<i class="lnr lnr-map-marker"></i><span>8375 E. Heather Drive Tonawanda,Manchester 14150,United Kingdom</span>
								</div>
								<div class="email">
									<i class="lnr lnr-envelope"></i><span>jopota@recruitment.com</span>
								</div>
								<div class="phone theme-color fz-17">(+1) 000 987-1234</div>
								<div class="footer-social justify-content-start mt-35">
									<a href="#"><i class="fab fa-facebook-square"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-google-plus-g"></i></a><a href="#"><i class="fab fa-pinterest-square"></i></a><a href="#"><i class="fab fa-youtube"></i></a>
								</div>
							</div>
							<!-- Footer Widget End -->
						</div>
						<div class="col-xl-2 col-lg-2 col-md-6">
							<!-- Footer Widget Start -->
							<div class="footer-widget mb-30">
								<h6 class="title">Company</h6>
								<div class="footer-widget-link">
									<ul>
										<li><a href="#">Press Corner</a></li>
										<li><a href="#">Policy Privacy</a></li>
										<li><a href="#">Terms And Conditions</a></li>
										<li><a href="#">Partner</a></li>
										<li><a href="#">Help Center</a></li>
										<li><a href="#">Contact Us</a></li>
									</ul>
								</div>
							</div>
							<!-- Footer Widget End -->
						</div>
						<div class="col-xl-2 col-lg-3 col-md-6">
							<!-- Footer Widget Start -->
							<div class="footer-widget mb-30">
								<h6 class="title">Help Center</h6>
								<div class="footer-widget-link">
									<ul>
										<li><a href="#">Teachers</a></li>
										<li><a href="#">Accounting</a></li>
										<li><a href="#">Customer Service</a></li>
										<li><a href="#">Digital Marketing</a></li>
										<li><a href="#">Web & Software Dev</a></li>
										<li><a href="#">Science & Analitycs</a></li>
									</ul>
								</div>
							</div>
							<!-- Footer Widget End -->
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<!-- Footer Widget Start -->
							<div class="footer-widget mb-30">
								<h6 class="title">Newsletter</h6>
								<div class="newsletter">
									<p>
										Join our email subscription now to get updates on <strong>new jobs</strong>and <strong>notifications</strong>.
									</p>
									<div class="newsletter-form">
										<form id="mc-form" class="mc-form">
											<input type="email" placeholder="Enter Your email..." required="" name="EMAIL">
											<button class="ht-btn small-btn" type="submit" value="submit">Subscribe</button>
										</form>
									</div>
									<!-- mailchimp-alerts Start -->
									<div class="mailchimp-alerts">
										<div class="mailchimp-submitting"></div>
										<!-- mailchimp-submitting end -->
										<div class="mailchimp-success"></div>
										<!-- mailchimp-success end -->
										<div class="mailchimp-error"></div>
										<!-- mailchimp-error end -->
									</div>
									<!-- mailchimp-alerts end -->
								</div>
							</div>
							<!-- Footer Widget End -->
						</div>
					</div>
				</div>
			</div>
			<!-- Footer Top Section End -->
			<!--Footer bottom start-->
			<div class="footer-bottom section fb-60">
				<div class="container">
					<div class="row no-gutters st-border pt-35 pb-35 align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6">
							<div class="copyright">
								<p>
									&copy;2020 <a href="http://www.bootstrapmb.com">Jetapo</a>. All rights reserved.
								</p>
							</div>
						</div>
						<div class="col-lg-6 col-md-6">
							<div class="footer-nav">
								<nav>
									<ul>
										<li><a href="#">Find Work</a></li>
										<li><a href="#">Candicates</a></li>
										<li><a href="#">Employers</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Footer bottom end-->
		</footer>
		<!--Footer section end-->
		<!-- Modal Area Strat -->
		<div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="col-xl-12 col-lg-12">
							<div class="row no-gutters">
								<div class="col-lg-4">
									<div class="login-register-form-area">
										<div class="login-tab-menu">
											<ul class="nav">
												<li><a class="active show" data-toggle="tab" href="#login">Login</a></li>
												<li><a data-toggle="tab" href="#register">Register</a></li>
											</ul>
										</div>
										<div class="tab-content">
											<div id="login" class="tab-pane fade show active">
												<div class="login-register-form">
													<form action="#" method="post">
														<p>Login to Jotopa with your registered account</p>
														<div class="row">
															<div class="col-12">
																<div class="single-input">
																	<input type="text" placeholder="Username or Email" name="name">
																</div>
															</div>
															<div class="col-12">
																<div class="single-input">
																	<input type="password" placeholder="Password" name="password">
																</div>
															</div>
															<div class="col-12">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-remember" id="login-form-remember"><label for="login-form-remember">Remember me</label>
																</div>
															</div>
															<div class="col-12 mb-25">
																<button class="ht-btn">Login</button>
															</div>
														</div>
													</form>
													<div class="divider">
														<span class="line"></span><span class="circle">or login with</span>
													</div>
													<div class="social-login">
														<ul class="social-icon">
															<li><a class="facebook" href="#"><i class="fab fa-facebook"></i></a></li>
															<li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
															<li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
															<li><a class="google" href="#"><i class="fab fa-google-plus"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div id="register" class="tab-pane fade">
												<div class="login-register-form">
													<form action="#" method="post">
														<p>Create Your account</p>
														<div class="row row-5">
															<div class="col-12">
																<div class="single-input">
																	<input type="text" placeholder="Your Username" name="name">
																</div>
															</div>
															<div class="col-12">
																<div class="single-input">
																	<input type="email" placeholder="Your Email Address" name="emain">
																</div>
															</div>
															<div class="col-sm-6">
																<div class="single-input">
																	<input type="password" placeholder="Password" name="password">
																</div>
															</div>
															<div class="col-sm-6">
																<div class="single-input">
																	<input type="password" placeholder="Confirm Password" name="conPassword">
																</div>
															</div>
															<div class="col-6">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-candidate" id="login-form-candidate"><label for="login-form-candidate">I am a candidate</label>
																</div>
															</div>
															<div class="col-6">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-employer" id="login-form-employer"><label for="login-form-employer">I am a employer</label>
																</div>
															</div>
															<div class="col-12">
																<div class="register-account">
																	<input id="register-terms-conditions" type="checkbox" class="checkbox" checked="" required=""><label for="register-terms-conditions">I read and agree to the <a href="#">Terms &amp;Conditions</a>and <a href="#">Privacy Policy</a>
																	</label>
																</div>
															</div>
															<div class="col-12 mb-25">
																<button class="ht-btn">Register</button>
															</div>
														</div>
													</form>
													<div class="divider">
														<span class="line"></span><span class="circle">or login with</span>
													</div>
													<div class="social-login">
														<ul class="social-icon">
															<li><a class="facebook" href="#"><i class="fab fa-facebook"></i></a></li>
															<li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
															<li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
															<li><a class="google" href="#"><i class="fab fa-google-plus"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-8">
									<div class="login-instruction">
										<div class="login-instruction-content">
											<h3 class="title">Why Login To Us</h3>
											<p>It’s important for you to have an account and login in order to have full access at Jotopa. We need to know your account details in order to allow work together</p>
											<ul class="list-reasons">
												<li class="reason">Be alerted to the latest jobs</li>
												<li class="reason">Apply for jobs with a single click</li>
												<li class="reason">Showcase your CV to thousands of employers</li>
												<li class="reason">Keep a record of all your applications</li>
											</ul>
											<span class="sale-text theme-color border-color">Login today &amp;Get 15% Off Coupon for the first planning purchase</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Area End -->
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