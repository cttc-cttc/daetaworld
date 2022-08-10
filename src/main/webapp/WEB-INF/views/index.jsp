<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body class="template-color-3">
	<div id="main-wrapper">
		<!--Header section start-->
		<header
			class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
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
											<li><a href="adminPage">Dashboard(Admin Page)</a></li>
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
									<div class="jp-author-action-two item">
										<a class="ht-btn header-btn"
											href="#quick-view-modal-container" data-toggle="modal">Post
											A Job</a>
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
					<li><a class="toggle-btn active" href="index-3.html"><span><i
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
		<!--slider section start-->
		<div class="hero-section section position-relative">
			<!--Hero Item start-->
			<div class="hero-item hero-item-three bg_image-v3">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<!--Hero Content start-->
							<div class="hero-content-4 left">
								<h2 class="title">Find top it jobs</h2>
								<h3 class="sub-title">For talent Developers</h3>
								<p>Discover your next career move,freelance gig,or
									internship</p>
								<div class="job-search-wrap-three mt-50 mt-sm-30 mt-xs-30">
									<div class="job-search-form">
										<form action="#">
											<!-- Single Field Item Start -->
											<div class="single-field-item keyword">
												<label for="keyword">What</label><input id="keyword"
													placeholder="What jobs you want?" name="keyword"
													type="text">
											</div>
											<!-- Single Field Item End -->
											<!-- Single Field Item Start -->
											<div class="single-field-item location">
												<label for="location">Where</label><input id="location"
													class="input-field input-field-location"
													placeholder="Location" name="location" type="text"><span
													class="btn-action-location"><i
													class="far fa-dot-circle"></i></span>
											</div>
											<!-- Single Field Item End -->
											<div class="submit-btn">
												<button class="ht-btn fz-18" type="submit">
													<i class="lnr lnr-magnifier"></i>Find Job
												</button>
											</div>
										</form>
									</div>
									<div class="trending-keywords mt-30 mt-xs-10">
										<div class="keywords style-three">
											<span class="title">Now Trending </span>
											<ul>
												<li><a href="#">Account Manager</a></li>
												<li><a href="#">Administrative</a></li>
												<li><a href="#">Android</a></li>
												<li><a href="#">Angular</a></li>
												<li><a href="#">app</a></li>
												<li><a href="#">ASP.NET</a></li>
											</ul>
										</div>
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
		<!--slider section end-->
		<!-- Brand Section Start -->
		<div
			class="brand-section section pb-105 pb-lg-85 pb-md-65 pb-sm-45 pb-xs-35">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="brand-title mb-45">
							<p>
								<span><strong>20,000+tech companies</strong></span>are looking
								for developers on Jetapo
							</p>
						</div>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-1.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-2.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-3.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-4.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-5.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
					<div class="col-xl-2 col-lg-2 col-md-2 col-sm-6">
						<!-- Single Brand Start -->
						<div class="single-brand">
							<a href="#"><img src="${contextPath}/resources/assets/images/brand/brand-6.jpg" alt=""></a>
						</div>
						<!-- Single Brand End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Brand Section End -->
		<!-- Job Categories Two Section Start -->
		<div
			class="job-categories-two section pb-90 pb-lg-70 pb-md-50 pb-sm-30 pb-xs-20">
			<div
				class="container st-border pt-110 pt-lg-90 pt-md-70 pt-sm-50 pt-xs-40">
				<div class="row">
					<div class="col-12">
						<div class="categories-tab-menu mb-70 mb-sm-45 mb-xs-30">
							<ul class="nav justify-content-center">
								<li><a class="active show" data-toggle="tab" href="#skills">Jobs
										by skills</a></li>
								<li><a data-toggle="tab" href="#roles">Jobs by roles</a></li>
								<li><a data-toggle="tab" href="#loca">Jobs by location</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="tab-content">
							<div id="skills" class="tab-pane fade show active">
								<div class="row">
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-angular.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">Angular</a>
												</h4>
											</div>
											<span class="count-job">3 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-python.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">Python</a>
												</h4>
											</div>
											<span class="count-job">1 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-ruby.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">Ruby</a>
												</h4>
											</div>
											<span class="count-job">1 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-reactjs.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">ReactJS</a>
												</h4>
											</div>
											<span class="count-job">1 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-wp.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">WordPress</a>
												</h4>
											</div>
											<span class="count-job">1 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-nodejs.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">NodeJS</a>
												</h4>
											</div>
											<span class="count-job">1 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-c-plus.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">C++</a>
												</h4>
											</div>
											<span class="count-job">2 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-linux.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">Linux</a>
												</h4>
											</div>
											<span class="count-job">0 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-java.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">Java</a>
												</h4>
											</div>
											<span class="count-job">0 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skil-iosl.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">ios</a>
												</h4>
											</div>
											<span class="count-job">3 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-asp.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">ASP.NET</a>
												</h4>
											</div>
											<span class="count-job">4 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<div class="img-icon">
													<img
														src="${contextPath}/resources/assets/images/programming-logo/image-icon-skill-app.png"
														alt="">
												</div>
												<h4 class="title">
													<a href="job-listing.html">app</a>
												</h4>
											</div>
											<span class="count-job">3 Jobs</span>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
								</div>
							</div>
							<div id="roles" class="tab-pane fade">
								<div class="row">
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Professional</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Manager</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Junior</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Senior</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
								</div>
							</div>
							<div id="loca" class="tab-pane fade">
								<div class="row">
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Hamburg‚ Germany</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Silesian Voivodeship‚ Poland</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Maharashtra‚ India</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Đắk Lắk‚ Viet Nam </a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">New Jersey‚ United States</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Tamil Nadu‚ India</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Selangor‚ Malaysia</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Lower Saxony‚ Germany</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Nam Dinh‚ Viet Nam</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Florida‚ United States</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Texas‚ United States</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
									<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
										<!-- Single Job Categories Two Start -->
										<div class="single-job-categories-two mb-30">
											<div class="item-info">
												<h4 class="title">
													<a href="job-listing.html">Telangana‚ India</a>
												</h4>
											</div>
										</div>
										<!-- Single Job Categories Two End -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Job Categories Two Section End -->
		<!-- Featured Employer Start -->
		<div
			class="featured-employer section bg-image-proparty bg_image--2 pt-110 pt-lg-90 pt-md-70 pt-sm-50 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">top Featured Employers</h3>
							<p>
								We can determine what developer needs and what skills they’re
								proficient in. You’ll get access to <br>the
								community,relevancy to your business,and more qualified
								employers.
							</p>
						</div>
					</div>
				</div>
				<div class="row employer-slider-two">
					<div class="col-lg-4">
						<!-- Single Employer Item Start -->
						<div class="single-employer-item">
							<div class="image-featured">
								<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-1.jpg"
									alt="">
							</div>
							<div class="item-content">
								<div class="avatar">
									<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg"
										alt="">
								</div>
								<h4 class="title">
									<a href="employer-details.html">Shippo Company </a>
								</h4>
								<div class="meta">
									<div class="star">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i>
									</div>
									<span class="location"><i class="lnr lnr-map-marker"></i>Nanba,Chuo
										Ward,Osaka,Japan </span><span class="count-job theme-color">2
										Jobs </span>
								</div>
							</div>
						</div>
						<!-- Single Employer Item End -->
					</div>
					<div class="col-lg-4">
						<!-- Single Employer Item Start -->
						<div class="single-employer-item">
							<div class="image-featured">
								<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-2.jpg"
									alt="">
							</div>
							<div class="item-content">
								<div class="avatar">
									<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg"
										alt="">
								</div>
								<h4 class="title">
									<a href="employer-details.html">Digital Asset</a>
								</h4>
								<div class="meta">
									<div class="star">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i>
									</div>
									<span class="location"><i class="lnr lnr-map-marker"></i>Beijing,China
									</span><span class="count-job theme-color">1 Jobs </span>
								</div>
							</div>
						</div>
						<!-- Single Employer Item End -->
					</div>
					<div class="col-lg-4">
						<!-- Single Employer Item Start -->
						<div class="single-employer-item">
							<div class="image-featured">
								<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-3.jpg"
									alt="">
							</div>
							<div class="item-content">
								<div class="avatar">
									<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg"
										alt="">
								</div>
								<h4 class="title">
									<a href="employer-details.html">Inwave Studio </a>
								</h4>
								<div class="meta">
									<div class="star">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i>
									</div>
									<span class="location"><i class="lnr lnr-map-marker"></i>Chicago,IL,USA
									</span><span class="count-job theme-color">2 Jobs </span>
								</div>
							</div>
						</div>
						<!-- Single Employer Item End -->
					</div>
					<div class="col-lg-4">
						<!-- Single Employer Item Start -->
						<div class="single-employer-item">
							<div class="image-featured">
								<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-4.jpg"
									alt="">
							</div>
							<div class="item-content">
								<div class="avatar">
									<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg"
										alt="">
								</div>
								<h4 class="title">
									<a href="employer-details.html">Vsmarttech </a>
								</h4>
								<div class="meta">
									<div class="star">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i>
									</div>
									<span class="location"><i class="lnr lnr-map-marker"></i>London
										Euston,London,UK </span><span class="count-job theme-color">1
										Jobs </span>
								</div>
							</div>
						</div>
						<!-- Single Employer Item End -->
					</div>
					<div class="col-lg-4">
						<!-- Single Employer Item Start -->
						<div class="single-employer-item">
							<div class="image-featured">
								<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-5.jpg"
									alt="">
							</div>
							<div class="item-content">
								<div class="avatar">
									<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg"
										alt="">
								</div>
								<h4 class="title">
									<a href="employer-details.html">Radio Game </a>
								</h4>
								<div class="meta">
									<div class="star">
										<i class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i><i class="fas fa-star"></i><i
											class="fas fa-star"></i>
									</div>
									<span class="location"><i class="lnr lnr-map-marker"></i>New
										York,NY,USA </span><span class="count-job theme-color">2 Jobs
									</span>
								</div>
							</div>
						</div>
						<!-- Single Employer Item End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Featured Employer End -->
		<!-- Job Section Start -->
		<div
			class="job-section section pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">Find your next job in a few clicks</h3>
							<p>Don’t waste time applying to companies. On
								Jotopa,companies apply to you.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<!-- Single Job Start -->
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a
													class="job-type-label ml-20 mr-20">Full Time</a><a
													class="save-job" href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
											<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a
												href="#">Ruby</a>
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
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a
													class="job-type-label partTime ml-20 mr-20">Part Time</a><a
													class="save-job " href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<a class="job-type-label ml-20 mr-20">Remote</a><a
													class="save-job " href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
											<a href="#">Angular</a><a href="#">ASP.NET</a><a href="#">Banner</a><a
												href="#">C++</a>
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
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a
													class="job-type-label ml-20 mr-20">Full Time</a><a
													class="save-job " href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a
													class="job-type-label ml-20 mr-20">Full Time</a><a
													class="save-job" href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
											<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a
												href="#">Ruby</a>
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
									<a href="job-details.html"><img
										src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo6.jpg"
										alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a
													class="job-type-label ml-20 mr-20">Full Time</a><a
													class="save-job " href="#quick-view-modal-container"
													data-toggle="modal"><i class="far fa-heart"></i></a>
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
								Thousands of top tech jobs are waiting for you. <a href="#">Browse
									all jobs</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Job Section End -->
		<!-- Banner Section Start -->
		<div class="banner-section section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner mb-30">
							<a href="#"><img src="${contextPath}/resources/assets/images/banner/banner-1.jpg"
								alt=""></a>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner mb-30">
							<a href="#"><img src="${contextPath}/resources/assets/images/banner/banner-2.jpg"
								alt=""></a>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner mb-30">
							<a href="#"><img src="${contextPath}/resources/assets/images/banner/banner-3.jpg"
								alt=""></a>
						</div>
						<!-- Single Banner End -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- Single Banner Start -->
						<div class="single-banner mb-30">
							<a href="#"><img src="${contextPath}/resources/assets/images/banner/banner-4.jpg"
								alt=""></a>
						</div>
						<!-- Single Banner End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Banner Section End -->
		<!-- Team Section Start -->
		<div
			class="team-section-start section bg_image-team pt-80 pt-lg-60 pt-md-40 pt-sm-20 pt-xs-15 pb-115 pb-lg-95 pb-md-75 pb-sm-55 pb-xs-45">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">Amazing candidates around the world</h3>
							<p>It’s possible!We deliver developer expertise to better
								inform your business decisions.</p>
						</div>
					</div>
				</div>
				<div class="row row-five-column no-gutters">
					<div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
						<!-- Single Team Start -->
						<div class="single-team mb-30">
							<div class="team-image">
								<img src="${contextPath}/resources/assets/images/team/team1.jpg" alt="">
							</div>
							<div class="team-content">
								<h4 class="team-title">
									<a href="#">Alexander </a>
								</h4>
								<p class="team-headline">Financial Reporting Manager</p>
							</div>
							<div
								class="item-box transition-theme d-flex flex-column flex-grow-1 align-items-center">
								<div class="item-content d-flex flex-column flex-grow-1">
									<p class="location">
										<i class="lnr lnr-map-marker"></i>New York
									</p>
									<ul class="skills">
										<li class="skill-item"><a href="#">Account Manager </a></li>
										<li class="skill-item"><a href="#">Administrative </a></li>
										<li class="skill-item"><a href="#">ASP.NET </a></li>
										<li class="skill-item"><a href="#">Automotive </a></li>
										<li class="skill-item"><a href="#">Business
												Development</a></li>
										<li class="skill-item"><a href="#">Linux </a></li>
									</ul>
								</div>
								<a class="ht-btn team-btn mt-15" href="#">View Resume </a>
							</div>
						</div>
						<!-- Single Team End -->
					</div>
					<div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
						<!-- Single Team Start -->
						<div class="single-team mb-30">
							<div class="team-image">
								<img src="${contextPath}/resources/assets/images/team/team2.jpg" alt="">
							</div>
							<div class="team-content">
								<h4 class="team-title">
									<a href="#">Alizabeth </a>
								</h4>
								<p class="team-headline">Front End Developer</p>
							</div>
							<div
								class="item-box transition-theme d-flex flex-column flex-grow-1 align-items-center">
								<div class="item-content d-flex flex-column flex-grow-1">
									<p class="location">
										<i class="lnr lnr-map-marker"></i>New York
									</p>
									<ul class="skills">
										<li class="skill-item"><a href="#">PHP</a></li>
										<li class="skill-item"><a href="#">Web Design</a></li>
										<li class="skill-item"><a href="#">WordPress </a></li>
									</ul>
								</div>
								<a class="ht-btn team-btn mt-15" href="#">View Resume </a>
							</div>
						</div>
						<!-- Single Team End -->
					</div>
					<div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
						<!-- Single Team Start -->
						<div class="single-team mb-30">
							<div class="team-image">
								<img src="${contextPath}/resources/assets/images/team/team3.jpg" alt="">
							</div>
							<div class="team-content">
								<h4 class="team-title">
									<a href="#">Arielle Terry </a>
								</h4>
								<p class="team-headline">Professional Web Developer</p>
							</div>
							<div
								class="item-box transition-theme d-flex flex-column flex-grow-1 align-items-center">
								<div class="item-content d-flex flex-column flex-grow-1">
									<p class="location">
										<i class="lnr lnr-map-marker"></i>California
									</p>
									<ul class="skills">
										<li class="skill-item"><a href="#">CSS3</a></li>
										<li class="skill-item"><a href="#">HTML5</a></li>
										<li class="skill-item"><a href="#">jQuery </a></li>
										<li class="skill-item"><a href="#">WordPress </a></li>
									</ul>
								</div>
								<a class="ht-btn team-btn mt-15" href="#">View Resume </a>
							</div>
						</div>
						<!-- Single Team End -->
					</div>
					<div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
						<!-- Single Team Start -->
						<div class="single-team mb-30">
							<div class="team-image">
								<img src="${contextPath}/resources/assets/images/team/team4.jpg" alt="">
							</div>
							<div class="team-content">
								<h4 class="team-title">
									<a href="#">Daniel Nguyen </a>
								</h4>
								<p class="team-headline">Senior UI / UX Designer</p>
							</div>
							<div
								class="item-box transition-theme d-flex flex-column flex-grow-1 align-items-center">
								<div class="item-content d-flex flex-column flex-grow-1">
									<p class="location">
										<i class="lnr lnr-map-marker"></i>Fremont,California
									</p>
									<ul class="skills">
										<li class="skill-item"><a href="#">Creative</a></li>
										<li class="skill-item"><a href="#">CSS3</a></li>
										<li class="skill-item"><a href="#">Illustrator </a></li>
										<li class="skill-item"><a href="#">InDesign</a></li>
										<li class="skill-item"><a href="#">Photoshop</a></li>
										<li class="skill-item"><a href="#">Web Design </a></li>
									</ul>
								</div>
								<a class="ht-btn team-btn mt-15" href="#">View Resume </a>
							</div>
						</div>
						<!-- Single Team End -->
					</div>
					<div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
						<!-- Single Team Start -->
						<div class="single-team mb-30">
							<div class="team-image">
								<img src="${contextPath}/resources/assets/images/team/team5.jpg" alt="">
							</div>
							<div class="team-content">
								<h4 class="team-title">
									<a href="#">Erica Carina</a>
								</h4>
								<p class="team-headline">Financial Reporting Manager</p>
							</div>
							<div
								class="item-box transition-theme d-flex flex-column flex-grow-1 align-items-center">
								<div class="item-content d-flex flex-column flex-grow-1">
									<p class="location">
										<i class="lnr lnr-map-marker"></i>Santa Fe,New Mexico
									</p>
									<ul class="skills">
										<li class="skill-item"><a href="#">Account Manager </a></li>
										<li class="skill-item"><a href="#">Administrative </a></li>
										<li class="skill-item"><a href="#">ASP.NET </a></li>
									</ul>
								</div>
								<a class="ht-btn team-btn mt-15" href="#">View Resume </a>
							</div>
						</div>
						<!-- Single Team End -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="all-team">
							<a href="#">Browse all talent candidates <i
								class="lnr lnr-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Team Section End -->
		<!-- Blog Section Start -->
		<div
			class="blog-section section pb-120 pb-lg-100 pb-md-80 pb-sm-50 pb-xs-40">
			<div class="container st-border">
				<div class="row no-gutters">
					<div class="col-lg-6">
						<!-- Simple Work Start -->
						<div class="simple-work">
							<div class="section-title-two text-left">
								<h3 class="title">It's simple & it works</h3>
							</div>
							<div class="work-video-image">
								<div class="video-popup-content">
									<a class="link-video d-flex venobox" data-autoplay="true"
										data-vbtype="video"
										href="https://www.youtube.com/watch?v=XSGBVzeBUbk"> <span
										class="icon d-flex align-items-center justify-content-center flex-grow-1">
											<i class="fa fa-play"></i>
									</span>
									</a>
								</div>
							</div>
							<div class="work-list-wrap">

								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon1.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">Understand</h4>
										<p>Everything about developers, inside your organization
											and out.</p>
									</div>
								</div>
								<!-- Single List Work End -->

								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon2.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">Source</h4>
										<p>The right talent on the platform they trust the most.</p>
									</div>
								</div>
								<!-- Single List Work End -->

								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon3.png" alt="">
									</div>
									<div class="work-content">
										<h4 class="title">Optimize</h4>
										<p>Your hiring efforts with our team of experts.</p>
									</div>
								</div>
								<!-- Single List Work End -->

							</div>
						</div>
						<!-- Simple Work End -->
					</div>
					<div class="col-lg-6">
						<!-- Blog Wrap Start -->
						<div class="blog-area">
							<div class="section-title-two text-left">
								<h3>from our blog</h3>
							</div>

							<div class="blog-wrap">
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img
											src="${contextPath}/resources/assets/images/blog/blog1.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span>
												<span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">The Reason Why Software
												Developer Repeats As ‘Best Job’</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img
											src="${contextPath}/resources/assets/images/blog/blog2.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span>
												<span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">7 Answers to the Most
												Frequently Asked Questions About Job</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
								<!-- Single List Blog Start -->
								<div class="single-list-blog">
									<div class="blog-image">
										<a href="blog-details.html"><img
											src="${contextPath}/resources/assets/images/blog/blog1.jpg" alt="blog"></a>
									</div>
									<div class="blog-content">
										<div class="blog-meta">
											<p class="blog-author">
												<i class="lnr lnr-user"></i> <span class="text">Posted:</span>
												<span class="author">Hien Tran</span>
											</p>
											<p class="blog-date-post">
												<i class="lnr lnr-clock"></i>Oct 24, 2019
											</p>
										</div>
										<h4 class="title">
											<a href="blog-details.html">The Question Everyone Working
												in Job Should Know to Answer</a>
										</h4>
									</div>
								</div>
								<!-- Single List Blog End -->
							</div>
							<div class="all-articale">
								<a href="#">Browse all articles <i
									class="lnr lnr-chevron-right"></i></a>
							</div>
						</div>
						<!-- Blog Wrap End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Blog Section End -->

		<!-- Testimonial Section Start -->
		<div
			class="testimonial-section section bg_color--3 pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title-two mb-45">
							<h3>What Do Clients Say About us?</h3>
						</div>
					</div>
				</div>
				<div class="testimonial-slider-three row">

					<div class="col-lg-4">
						<!-- Single Testimonial Start -->
						<div class="single-testimonial-two">
							<div
								class="item-box d-flex align-items-start justify-content-between">
								<div class="item-avatar">
									<img src="${contextPath}/resources/assets/images/testimonial/testimonial-two-7.png"
										alt="">
								</div>
								<div class="item-star star-5">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
							</div>
							<div class="item-comment">
								<p>I love Jopota Freelancer Network. I have gotten at least
									50 times the value from Jopota Freelancer Network. I would also
									like to say thank you to all your staff."</p>
							</div>
							<div class="item-meta">
								<h5 class="name">Celestine F.</h5>
								<p class="text">
									<span class="position">Java Developers at </span> <span
										class="company theme-color">Fotex Agency </span>
								</p>
							</div>
						</div>
						<!-- Single Testimonial End -->
					</div>

					<div class="col-lg-4">
						<!-- Single Testimonial Start -->
						<div class="single-testimonial-two">
							<div
								class="item-box d-flex align-items-start justify-content-between">
								<div class="item-avatar">
									<img src="${contextPath}/resources/assets/images/testimonial/testimonial-two-8.png"
										alt="">
								</div>
								<div class="item-star star-5">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
							</div>
							<div class="item-comment">
								<p>"Wow what great service, I love it! Jopota Recruitment is
									both attractive and highly adaptable. Not able to tell you how
									happy I am with Jopota Recruitment."</p>
							</div>
							<div class="item-meta">
								<h5 class="name">Tamarah Z.</h5>
								<p class="text">
									<span class="position">CEO/Founder at </span> <span
										class="company theme-color">Royal Group </span>
								</p>
							</div>
						</div>
						<!-- Single Testimonial End -->
					</div>

					<div class="col-lg-4">
						<!-- Single Testimonial Start -->
						<div class="single-testimonial-two">
							<div
								class="item-box d-flex align-items-start justify-content-between">
								<div class="item-avatar">
									<img src="${contextPath}/resources/assets/images/testimonial/testimonial-3.jpg" alt="">
								</div>
								<div class="item-star star-5">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
							</div>
							<div class="item-comment">
								<p>"Jopota IT Recruitment has got everything I need. The
									best on the net! I don't know what else to say. I would like to
									personally thank you for your outstanding product. They are all
									trully awesome for us to say that."</p>
							</div>
							<div class="item-meta">
								<h5 class="name">Elicia H.</h5>
								<p class="text">
									<span class="position">Human Resource at</span> <span
										class="company theme-color">iquid Design </span>
								</p>
							</div>
						</div>
						<!-- Single Testimonial End -->
					</div>

					<div class="col-lg-4">
						<!-- Single Testimonial Start -->
						<div class="single-testimonial-two">
							<div
								class="item-box d-flex align-items-start justify-content-between">
								<div class="item-avatar">
									<img src="${contextPath}/resources/assets/images/testimonial/testimonial-two-9.png"
										alt="">
								</div>
								<div class="item-star star-5">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</div>
							</div>
							<div class="item-comment">
								<p>I love Jopota Freelancer Network. I have gotten at least
									50 times the value from Jopota Freelancer Network. I would also
									like to say thank you to all your staff."</p>
							</div>
							<div class="item-meta">
								<h5 class="name">Renato Abati</h5>
								<p class="text">
									<span class="position">Freelance Designer at </span><span
										class="company theme-color">Alpha</span>
								</p>
							</div>
						</div>
						<!-- Single Testimonial End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Testimonial Section End -->
		<!-- CTA Section Start -->
		<div class="cta-section section bg_color--4 pt-50 pb-50">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-8 col-sm-12 col-12">
						<div class="call-content text-center text-lg-left">
							<h3 class="title">
								Upload Your CV <span>& connect Top Employers</span>
							</h3>
							<p>Upload your CV today to be headhunted by thousands
								companies</p>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12">
						<div class="call-btn text-center text-lg-right">
							<a class="ht-btn green-btn" href="#">Upload Your CV</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CTA Section End -->
		<!--Footer section start-->
		<footer class="footer-section section bg-image-proparty bg_image--2">
			<!-- Funfact Section Start -->
			<div
				class="funfact-section section pt-70 pt-sm-60 pt-xs-50 pb-70 pb-sm-55 pb-xs-20">
				<div class="container">
					<div class="row align-items-center justify-content-between">
						<div class="col-lg-5">
							<div class="app-image d-flex mb-0 mb-sm-30 mb-xs-30">
								<a class="mr-5" href="#"><img
									src="${contextPath}/resources/assets/images/app-store/app-store-2.png" alt=""></a><a
									href="#"><img
									src="${contextPath}/resources/assets/images/app-store/app-chplay-2.png" alt=""></a>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4">
									<!-- Single Funfact Start -->
									<div class="single-funfact funfact-style-two width-100">
										<div class="funfact-content">
											<span class="counter heading-color">1,187,496</span><span
												class="text">global employers</span>
										</div>
									</div>
									<!-- Single Funfact End -->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<!-- Single Funfact Start -->
									<div class="single-funfact funfact-style-two width-100">
										<div class="funfact-content">
											<span class="counter heading-color">484,685</span><span
												class="text">top developers</span>
										</div>
									</div>
									<!-- Single Funfact End -->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4">
									<!-- Single Funfact Start -->
									<div class="single-funfact funfact-style-two width-100">
										<div class="funfact-content">
											<span class="counter heading-color">1,315,989</span><span
												class="text">registered users</span>
										</div>
									</div>
									<!-- Single Funfact End -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Funfact Section Start -->
			<!-- Footer Top Section Start -->
			<div
				class="footer-top-section section pb-80 pb-lg-60 pb-md-40 pb-sm-20 pb-xs-15">
				<div
					class="container st-border pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45">
					<div class="row">
						<div class="col-xl-4 col-lg-3 col-md-6">
							<!-- Footer Widget Start -->
							<div class="footer-widget mb-30">
								<h6 class="title">Contact Info</h6>
								<div class="address">
									<i class="lnr lnr-map-marker"></i><span>8375 E. Heather
										Drive Tonawanda,Manchester 14150,United Kingdom</span>
								</div>
								<div class="email">
									<i class="lnr lnr-envelope"></i><span>jopota@recruitment.com</span>
								</div>
								<div class="phone theme-color fz-17">(+1) 000 987-1234</div>
								<div class="footer-social justify-content-start mt-35">
									<a href="#"><i class="fab fa-facebook-square"></i></a><a
										href="#"><i class="fab fa-twitter"></i></a><a href="#"><i
										class="fab fa-google-plus-g"></i></a><a href="#"><i
										class="fab fa-pinterest-square"></i></a><a href="#"><i
										class="fab fa-youtube"></i></a>
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
										Join our email subscription now to get updates on <strong>new
											jobs</strong>and <strong>notifications</strong>.
									</p>
									<div class="newsletter-form">
										<form id="mc-form" class="mc-form">
											<input type="email" placeholder="Enter Your email..."
												required="" name="EMAIL">
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
					<div
						class="row no-gutters st-border pt-35 pb-35 align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6">
							<div class="copyright">
								<p>
									&copy;2020 <a href="http://www.bootstrapmb.com">Jetapo</a>. All
									rights reserved.
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
		<div class="modal fade quick-view-modal-container"
			id="quick-view-modal-container" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
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
												<li><a class="active show" data-toggle="tab"
													href="#login">Login</a></li>
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
																	<input type="text" placeholder="Username or Email"
																		name="name">
																</div>
															</div>
															<div class="col-12">
																<div class="single-input">
																	<input type="password" placeholder="Password"
																		name="password">
																</div>
															</div>
															<div class="col-12">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-remember"
																		id="login-form-remember"><label
																		for="login-form-remember">Remember me</label>
																</div>
															</div>
															<div class="col-12 mb-25">
																<button class="ht-btn">Login</button>
															</div>
														</div>
													</form>
													<div class="divider">
														<span class="line"></span><span class="circle">or
															login with</span>
													</div>
													<div class="social-login">
														<ul class="social-icon">
															<li><a class="facebook" href="#"><i
																	class="fab fa-facebook"></i></a></li>
															<li><a class="twitter" href="#"><i
																	class="fab fa-twitter"></i></a></li>
															<li><a class="linkedin" href="#"><i
																	class="fab fa-linkedin"></i></a></li>
															<li><a class="google" href="#"><i
																	class="fab fa-google-plus"></i></a></li>
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
																	<input type="text" placeholder="Your Username"
																		name="name">
																</div>
															</div>
															<div class="col-12">
																<div class="single-input">
																	<input type="email" placeholder="Your Email Address"
																		name="emain">
																</div>
															</div>
															<div class="col-sm-6">
																<div class="single-input">
																	<input type="password" placeholder="Password"
																		name="password">
																</div>
															</div>
															<div class="col-sm-6">
																<div class="single-input">
																	<input type="password" placeholder="Confirm Password"
																		name="conPassword">
																</div>
															</div>
															<div class="col-6">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-candidate"
																		id="login-form-candidate"><label
																		for="login-form-candidate">I am a candidate</label>
																</div>
															</div>
															<div class="col-6">
																<div class="checkbox-input">
																	<input type="checkbox" name="login-form-employer"
																		id="login-form-employer"><label
																		for="login-form-employer">I am a employer</label>
																</div>
															</div>
															<div class="col-12">
																<div class="register-account">
																	<input id="register-terms-conditions" type="checkbox"
																		class="checkbox" checked="" required=""><label
																		for="register-terms-conditions">I read and
																		agree to the <a href="#">Terms &amp;Conditions</a>and
																		<a href="#">Privacy Policy</a>
																	</label>
																</div>
															</div>
															<div class="col-12 mb-25">
																<button class="ht-btn">Register</button>
															</div>
														</div>
													</form>
													<div class="divider">
														<span class="line"></span><span class="circle">or
															login with</span>
													</div>
													<div class="social-login">
														<ul class="social-icon">
															<li><a class="facebook" href="#"><i
																	class="fab fa-facebook"></i></a></li>
															<li><a class="twitter" href="#"><i
																	class="fab fa-twitter"></i></a></li>
															<li><a class="linkedin" href="#"><i
																	class="fab fa-linkedin"></i></a></li>
															<li><a class="google" href="#"><i
																	class="fab fa-google-plus"></i></a></li>
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
											<p>It’s important for you to have an account and login in
												order to have full access at Jotopa. We need to know your
												account details in order to allow work together</p>
											<ul class="list-reasons">
												<li class="reason">Be alerted to the latest jobs</li>
												<li class="reason">Apply for jobs with a single click</li>
												<li class="reason">Showcase your CV to thousands of
													employers</li>
												<li class="reason">Keep a record of all your
													applications</li>
											</ul>
											<span class="sale-text theme-color border-color">Login
												today &amp;Get 15% Off Coupon for the first planning
												purchase</span>
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