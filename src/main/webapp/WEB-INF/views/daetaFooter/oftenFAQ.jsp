<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/index.css">
<body class="template-color-3">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp"%>
		</header>
		<!-- 싱딘 메뉴 end-->
		<div class="contents" style="line-height: 160%; font-size: 12px">
			<h3 class="termsTitle">
				<script
					src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

				<div
					style="padding: 0 0 45px 0; min-height: 60px; font-family: 'Noto-B'; font-size: 40px; color: #2d3280; text-align: center"></div>
			</h3>
			<!-- Content here -->

			<div class="container">
				<!-- Content here -->
				<div style="width: 1024px; margin: 80px auto 0px; display: flex;">
					<div
						style="width: 270px; height: 70px; background-color: rgb(113, 162, 255); border-radius: 7px; display: flex; align-items: center; justify-content: center;">
						<p
							style="width: 100%; text-align: center; font-size: 18px; font-weight: 600; color: white; letter-spacing: 0.2px; margin: 0px auto;">이용자가이드</p>
					</div>
				</div>
			</div>
		</div>
		<br>


		<!-- 본문 -->
		<div class="container">
		<div class="accordion" id="accordionPanelsStayOpenExample">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">결제는 어떻게
					해야하나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>결제 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<!--  -->
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">구직자 번호는
					어디서 볼수있나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>지원자 리스트 확인하시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">구인자/구직자
					핸드폰은 어디서 보나요??</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>구직자/구인자 리스트를 이용해주시면
							됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">탈퇴는 어떻게
					하나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>개인정보 수정을 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">아이디는 어디서
					찾으면 되나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>아이디찾기를 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">결제는 어떻게
					해야하나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>결제 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">결제는 어떻게
					해야하나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>결제 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		<br> <br>
		<div class="container">
			<div class="dropdown">
				<button class="btn btn-light dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">결제는 어떻게
					해야하나요?</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item">마이페이지>결제 이용해주시면 됩니다.</a></li>

				</ul>
			</div>
		</div>
		
		</div>
		
	</div>
	<!-- 본문 끝 -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Placed js at the end of the document so the pages load faster -->
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