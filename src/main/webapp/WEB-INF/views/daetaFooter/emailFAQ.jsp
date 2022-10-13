<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>이메일문의</title>
<%@ include file="../include/head.jsp"%>
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
										<li>고객지원</li>
										<li>이메일 문의</li>
									</ul>
									<h1>이메일 문의</h1>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8">
								<form action="${contextPath}" id="contact-form" method="post">
									<p>아래 양식을 작성하여 저희에게 메시지를 보내 주십시오.
										확인후 답변해드리겠습니다.</p>
									<div class="row">
										<div class="col-12">
											<div class="single-input">
												<input type="text" placeholder='이름을 입력하세요.' name= 'name' required = "required" pattern="[가-힣]{2,10}" autocomplete="off">
											</div>
										</div>
										<div class="col-12">
											<div class="single-input">
												<input type="email" placeholder="Email *" name="email" required = "required" autocomplete="off">
											</div>
										</div>
										<div class="col-12">
											<div class="single-input">
												<textarea name="message" placeholder="Message" required = "required" autocomplete="off"></textarea>
											</div>
										</div>
										<div class="col-12 mb-40">
											<button class="ht-btn">전송</button>
											<p class="form-messege"></p>
										</div>
									</div>
								</form>
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