<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>이용가이드</title>
<%@ include file="../include/head.jsp"%>
<style>
	.menu-content {
		cursor: context-menu;
	}
	
	.inner-style {
		width: 100%;
		text-align: center;
	}
</style>
<body class="template-color-3">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp"%>
		</header>
		<br><br><br><br><br>
		<!-- 싱딘 메뉴 end-->
		<hr style="margin: 0">
		
		<!-- 본문 -->
		<div class="dashboard-content-section section bg_color--3">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<!-- 좌측 메뉴 -->
					<%@ include file="../include/daetaFooter/footer_left_menu.jsp" %>
					
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="page-breadcrumb-content" style="margin: 2rem 0 4rem;">
									<ul class="page-breadcrumb">
										<li><a href="${contextPath}">Home</a></li>
										<li>고객지원</li>
										<li>이용가이드</li>
									</ul>
									<h1>이용가이드</h1>
								</div>
							</div>
						</div>

						<div class="container faq-wrapper">
							<div class="row">
								<div class="col-lg-6 pr-65 pr-md-15 pr-sm-15 pr-xs-15">
									<div class="dropdown">
										<button class="btn btn-outline-primary btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">결제는 어떻게 해야하나요?</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">마이페이지>결제 이용해주시면 됩니다.</a>
										</div>
									</div><br><br><br>
									
									<div class="dropdown">
										<button class="btn btn-outline-warning btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">구직자 번호는 어디서 볼수있나요?</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">마이페이지>지원자 리스트 확인하시면 됩니다.</a>
										</div>
									</div><br><br><br>
									
									<div class="dropdown">
										<button class="btn btn-outline-success btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">구인자/구직자 핸드폰은 어디서 보나요??</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">마이페이지>구직자/구인자 리스트를 이용해주시면 됩니다.</a>
										</div>
									</div><br><br><br>
								</div>
								<div class="col-lg-6 pr-65 pr-md-15 pr-sm-15 pr-xs-15">
									<div class="dropdown">
										<button class="btn btn-outline-danger btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">탈퇴는 어떻게 하나요?</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">마이페이지>개인정보 수정을 이용해주시면 됩니다.</a>
										</div>
									</div><br><br><br>
									
									<div class="dropdown">
										<button class="btn btn-outline-info btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">아이디는 어디서 찾으면 되나요?</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">로그인>아이디찾기를 이용해주시면 됩니다.</a>
										</div>
									</div><br><br><br>
									
									<div class="dropdown">
										<button class="btn btn-outline-secondary btn-block dropdown-toggle" type="button"
										data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">대타가 끝났는데 급여 지급이 안될 땐 어떻게 하나요?</button>
										<div class="dropdown-menu inner-style">
											<a class="dropdown-item menu-content">사장님께 전화 걸어서 독촉하시면 됩니다.</a>
										</div>
									</div><br><br><br>
								</div>
							</div>
						</div>
					</div>
		
				</div>
			</div>
		</div>
		<!-- 본문 끝 -->
		<%@ include file="../include/footer.jsp"%>
	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
</body>
</html>