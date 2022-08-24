<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">
<title>404 페이지</title>
<style>
	.pre-btn {
		position: relative !important;
		width: 10em;
		height: 3em !important;
		margin-top: 1em;
	}
</style>
<%@ include file="../include/head.jsp" %>
<body class="template-color-1">
	<div id="main-wrapper">
		<!--Header section start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!--Header section end-->
		
		<!--Error section start-->
		<div class="error-section section bg_color--5 pt-70 pt-lg-50 pt-md-30 pt-sm-10 pt-xs-0 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="col-12">
					<div class="error-404 not-found">
						<div class="text-404"></div>
						<div class="text-label-404">
							<h1>페이지를 찾을 수 없습니다.</h1>
						</div>
						<div class="home-link">
							<span>잘못된 경로로 접근하셨습니다. 아래 버튼을 눌러 이전 페이지로 이동하세요.</span>
							<div class="search-404">
								<div class="search-box">
									<button type="button" class="search-submit pre-btn">
										<span>이전으로</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--Error section end-->
		
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
	<script>
		$(".pre-btn").click(function() {
			window.history.back();
		});
	</script>
</body>
</html>