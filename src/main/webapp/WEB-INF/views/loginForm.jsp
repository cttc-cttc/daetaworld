<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
<body class="template-color-3">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="include/header.jsp" %>
		</header>
		<!-- 상단 메뉴 end-->
		
		<!-- Breadcrumb Section Start -->
		<div class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb">
								<li><a href="index.html">Home</a></li>
								<li>Login & Register</li>
							</ul>
							<h1>로그인 & 회원가입</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Section Start -->
		
		<!-- Login Register Section Start -->
		<div class="login-register-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-4">
						<div class="login-register-form-area">
							<div class="login-tab-menu">
								<ul class="nav">
									<li><a class="active show" data-toggle="tab" href="#login">로그인</a></li>
									<li><a data-toggle="tab" href="#register">회원가입</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="login" class="tab-pane fade show active">
									<div class="login-register-form">
										<form method="post">
											<p>등록된 계정으로 오늘의 대타에 로그인하세요</p>
											<div class="row">
												<div class="col-12">
													<div class="single-input">
														<input type="text" placeholder="아이디 또는 이메일" name="name">
													</div>
												</div>
												<div class="col-12">
													<div class="single-input">
														<input type="password" placeholder="비밀번호" name="password">
													</div>
												</div>
												<div class="col-12">
													<div class="checkbox-input">
														<input type="checkbox" name="login-form-remember" id="login-form-remember"><label for="login-form-remember">아이디 저장하기</label>
													</div>
												</div>
												<div class="col-12 mb-25">
													<button class="ht-btn">로그인</button>
												</div>
											</div>
										</form>
										<div class="divider">
											<span class="line"></span><span class="circle">간편 로그인</span>
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
											<p>계정을 등록하세요</p>
											<div class="row row-5">
												<div class="col-12">
													<div class="single-input">
														<input type="text" placeholder="아이디" name="name">
													</div>
												</div>
												<div class="col-12">
													<div class="single-input">
														<input type="email" placeholder="이메일 주소" name="emain">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="single-input">
														<input type="password" placeholder="비밀번호" name="password">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="single-input">
														<input type="password" placeholder="비밀번호 확인" name="conPassword">
													</div>
												</div>
												<div class="col-6">
													<div class="checkbox-input">
														<input type="checkbox" name="login-form-candidate" id="login-form-candidate"><label for="login-form-candidate">노예입니다</label>
													</div>
												</div>
												<div class="col-6">
													<div class="checkbox-input">
														<input type="checkbox" name="login-form-employer" id="login-form-employer"><label for="login-form-employer">사장입니다</label>
													</div>
												</div>
												<div class="col-12">
													<div class="register-account">
														<input id="register-terms-conditions" type="checkbox" class="checkbox" checked="" required=""><label for="register-terms-conditions">약관 및 정책을 읽었으며 동의합니다. <a href="#">약관</a>, <a href="#">정책</a></label>
													</div>
												</div>
												<div class="col-12 mb-25">
													<button class="ht-btn">가입하기</button>
												</div>
											</div>
										</form>
										<div class="divider">
											<span class="line"></span><span class="circle">간편 로그인</span>
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
								<h3 class="title">오늘의 대타로 색다른 일을 해보세요</h3>
								<p>지금 가입하시어 오늘의 대타를 자유로이 이용해보세요.<br> 
								주인님 또는 노예놈에게 여러분의 정보를 주어 같이 일하자고 꼬셔보세요</p>
								<ul class="list-reasons">
									<li class="reason">간편한 일부터 색다른 일, 보람찬 일까지</li>
									<li class="reason">원하는 시간에 골라서 자유롭게 구인과 구직을 할 수 있습니다</li>
									<li class="reason">한번의 클릭으로 바로 등록 및 지원이 가능합니다</li>
									<li class="reason">지금 등록하시어 다양한 경험을 해보세요</li>
								</ul>
								<span class="sale-text theme-color border-color">오늘 가입하시면 500포인트가 자동 지급됩니다!</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Register Section End -->
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