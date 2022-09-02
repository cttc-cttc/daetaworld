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
							style="width: 100%; text-align: center; font-size: 18px; font-weight: 600; color: white; letter-spacing: 0.2px; margin: 0px auto;">이메일문의</p>
					</div>
				</div>
			</div>
		</div>
		<br>


		<!-- 본문 -->
		<div class="container">
  <!-- Content here -->

		<div class="contact-info mb-30">
			
			<div class="contact-form">
				<form action="assets/php/contact-mail.php" id="contact-form"
					method="post">
					<p>아래 양식을 작성하여 저희에게 메시지를 보내 주십시오.
						확인후 답변해드리겠습니다.</p>
					<div class="row">
						<div class="col-12">
							<div class="single-input">
								<input type="text" placeholder="Your Name *" name="name">
							</div>
						</div>
						<div class="col-12">
							<div class="single-input">
								<input type="email" placeholder="Email *" name="email">
							</div>
						</div>
						<div class="col-12">
							<div class="single-input">
								<textarea name="message" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-12 mb-40">
							<button class="ht-btn">Send</button>
							<p class="form-messege"></p>
						</div>
					</div>
				</form>
			</div>
		</div>
		</div>

		<!-- 본문 끝 -->
		<%@ include file="../include/footer.jsp"%>

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