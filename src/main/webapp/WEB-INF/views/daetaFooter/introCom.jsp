<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>회사소개</title>
<%@ include file="../include/head.jsp" %>
<style>
	.style-space {
		margin-bottom: 1rem;
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
					
					<!-- Content here -->
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="page-breadcrumb-content" style="margin: 2rem 0 4rem;">
									<ul class="page-breadcrumb">
										<li><a href="${contextPath}">Home</a></li>
										<li>오늘의대타</li>
										<li>회사소개</li>
									</ul>
									<h1>회사소개</h1>
								</div>
							</div>
						</div>
							
						<div class="container faq-wrapper">
<ul>
<li>안녕하십니까! 오늘의대타를 방문해주셔서 감사합니다.</li>
<li class="style-space"></li>
				
<li>저희 업체는 짧은 기간 급하게 일할 직원이 필요한 사장님들에겐 동종업계 경험이 있는 대타자를 구할 수 있어</li>
<li>교육에 대한 부담이 줄어들고, 바로 투입 가능한 인력을 확보할 수 있다는 의도 하에 설립하게 되었습니다.</li>
<li>또한 짧은 기간 아르바이트를 원하는 구직자는 자신이 경험해 본 업종에 지원하여 부담이 줄어들 수 있습니다.</li>
<li>대타자와 사장님과의 빠른 연결을 보장 하겠습니다.</li>
<li>모든 분야에서 만족하는 오늘의대타가 되도록 최선을 다할 것이며, 앞으로도 많은 성원 부탁드립니다.</li>
<li class="style-space"></li>
							
<li>감사합니다.</li>
</ul>
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