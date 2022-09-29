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
		<div
			class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb">
								<li><a href="${contextPath}">Home</a></li>
								<li>FAQS</li>
							</ul>
							<h1>FAQS</h1>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 본문 내용 -->
		<div
			class="faq-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container faq-wrapper">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						
					</div>
					<div class="col-lg-9 col-md-9">
						<div class="row">
							<div class="col-lg-6 pr-65 pr-md-15 pr-sm-15 pr-xs-15">
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>어떻게 일을찾고 지원해야 하나요?</h5>
									<p>
										프로필을 먼저 완성해주세요. 직무경험에 관하여 상세하고 눈에 띄게끔 
										기재해주시면 고용주로부터 수락할 확률이 더 높아집니다. 
									<br><br>
								</div>
								<!-- Single Faq End -->
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>이미 오늘의 대타 유저인데 기존의 프로필을 사용하여 구인공고에 지원해도 되나요?</h5>
									<p>네!기존 프로필을 사용하여 새로운 일자리에 지원하실수 있습니다.
									 새로운 일자리에 지원해보세요.</p>
									<br><br>
								</div>
								<!-- Single Faq End -->
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>어떤 사람이 오늘의 대타에 지원할수 있나요?</h5>
									<p>오늘의 대타는 다양성을 추구합니다. 누구든지 지원하기를 권장합니다.
									 지원자본인의 직무경험과 직무스킬에 맞는 일자리를 확인하신다면 지원하시는것을 망설이지 마세요.^^</p>
									<br><br>
								</div>
								<!-- Single Faq End -->
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>가능한 일자리를 어디서 구할수 있을까요?</h5>
									
									<ul>
										<li>
										 <a href="${contextPath}/jobAds/listAll">일반구인</a>
										</li> 
										<li>
										 <a href="${contextPath}/jobAds/listUrgency">긴급구인</a>
										</li>
										<li>
										 <a href="${contextPath}/jobAds/listCountry">농어촌</a>
										</li>
									</ul>
									
								</div>
								<!-- Single Faq End -->
							</div>
							<div class="col-lg-6 pl-65 pl-md-15 pl-sm-15 pl-xs-15">
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>구직자가 지원을하면 수락이 어떻게 이뤄지는 걸까요?</h5>
									<p>각각의 일반구인 ,긴급구인 , 농어촌 메뉴를통하여 지원을 하게되시면 
									지원내역을 사장님께서 확인하신후 수락하게됩니다.
									</p>
									<br><br>
								</div>
								<!-- Single Faq End -->
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>언제쯤 수락결과를 알게될까요?</h5>
									<p>최대 2일내로 결과를 알 수 있습니다.</p>
									<br><br>
								</div>
								<!-- Single Faq End -->
								<!-- Single Faq Start -->
								<div class="single-faq">
									<h5>저의 이력서에대한 가이드라인이 있을까요?</h5>
									<p>저희 오늘의 대타는 다양성을 추구합니다. 지원자의 배경은 중요하지않습니다.
									이력서에대한 가이드라인은 지원자본인께서 원하시는대로 작성하시면 됩니다.</p>
									<ul>
										<li>능력에맞는 일자리를 발견하신다면 주저하지마시고 지원해주세요.^^</li>
										
									</ul>
									<br><br>
								</div>
								<!-- Single Faq End -->
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 pt-25 pb-15 mt-40 mt-xs-0">
						<div class="faq-border"></div>
						<div class="faq-contact">
							<p>
								더 궁금한 내용이 있으시다면 이메일문의를 이용해주세요.:<a href="${contextPath}/daetaFooter/emailFAQ">이메일문의</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 본문 내용 end -->
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