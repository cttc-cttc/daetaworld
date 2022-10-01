<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
<style>
	.social-icon > li {
		display: flex;
		margin: 0;
	}
</style>
<body class="template-color-3" onkeydown="onEnterLogin()">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
		</header>
		
		<!-- 상단 여백 Section Start -->
		<div class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb"></ul>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 상단 여백 Section end -->
		
		<!-- Login Register Section Start -->
		<div class="login-register-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-4">
						<div class="login-register-form-area">
							<div class="login-tab-menu">
								<ul class="nav">
									<li><a class="active show" style="cursor: context-menu;">통합 로그인</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="login" class="tab-pane fade show active">
									<div class="login-register-form">
										<form method="post">
											<p>오늘의 대타에 로그인하세요</p>
											<div class="row">
												<div class="col-12">
													<div class="single-input">
														<input type="text" placeholder="아이디" name="inputId" id="inputId">
													</div>
												</div>
												<div class="col-12">
													<div class="single-input">
														<input type="password" placeholder="비밀번호" name="inputPassword" id="inputPassword">
													</div>
												</div>
												<div class="col-12">
													<div class="checkbox-input">
														<input type="checkbox" name="login-form-remember" id="login-form-remember">
														<label for="login-form-remember">아이디 저장하기</label>
													</div>
													
													<a href="${contextPath}/findId">아이디 찾기 </a>
													&nbsp; | &nbsp;
													<a href="${contextPath}/findPw">비밀번호 찾기</a>
												
												</div>
											
												<div class="col-12 mb-25">
													<button type="button" class="ht-btn" onclick="validate()">로그인</button>
													<p style="margin-top: 1rem; color: red; text-align: center;">${loginFailedMsg }</p>
												</div>
											</div>
										</form>
										<div class="divider">
											<span class="line"></span><span class="circle">간편 로그인</span>
										</div>
										<div class="social-login">
											<ul class="social-icon" style="display: flex; align-items: center;">
												<li><%@ include file="../include/account/join_login/naver.jsp" %></li>
												<li><%@ include file="../include/account/join_login/kakao.jsp" %></li>
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
								<h3 class="title">오늘의대타로 색다른 일을 경험해보세요!</h3>
								<p>지금 가입하고 오늘의 대타를 자유롭게 이용해보세요.<br>
								사업체회원 또는 개인회원에게 여러분의 정보를 제공하고 비즈니스 파트너가 되어 보세요.</p>
								<ul class="list-reasons">
									<li class="reason">간편한 일부터 색다른 일, 보람찬 일 까지 모두 찾아 보세요.</li>
									<li class="reason">원하는 시간에 골라서 자유롭게 구인과 구직을 할 수 있습니다.</li>
									<li class="reason">한 번의 클릭으로 바로 등록 및 지원이 가능합니다.</li>
									<li class="reason">지금 등록하셔서 다양한 경험을 즐겨 보세요.</li>
								</ul>
								<span class="sale-text theme-color border-color">오늘 가입하시면 500포인트가 자동 지급됩니다!</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Register Section End -->
		
		<%@ include file="../include/footer.jsp" %>
	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
	<script>
		function onEnterLogin() {
			var keyCode = window.event.keyCode;
			if (keyCode == 13) // 엔터키
				validate();
		}
		
		function validate() {
			$('form').submit();
		}
	</script>
</body>
</html>