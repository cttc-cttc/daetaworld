<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>자주묻는 질문</title>
<%@ include file="../include/head.jsp"%>
<style>
	.li-restyle {
		margin-bottom: 0 !important;
	}
	
	.li-restyle > a {
		color: #636de7;
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
										<li>FAQ</li>
									</ul>
									<h1>자주 묻는 질문(FAQ)</h1>
								</div>
							</div>
						</div>
					
						<!-- 본문 내용 -->
						<div class="container faq-wrapper">
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="row">
										<div class="col-lg-6 pr-65 pr-md-15 pr-sm-15 pr-xs-15">
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 어떻게 일을찾고 지원해야 하나요?</h5>
												<p>
													A. 프로필을 먼저 완성해주세요. 직무경험에 관하여 상세하고 눈에 띄게끔 
													기재해주시면 고용주로부터 수락할 확률이 더 높아집니다. 
												<br><br>
											</div>
											<!-- Single Faq End -->
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 이미 오늘의 대타 유저인데 기존의 프로필을 사용하여 구인공고에 지원해도 되나요?</h5>
												<p>A. 네!기존 프로필을 사용하여 새로운 일자리에 지원하실수 있습니다.
												 새로운 일자리에 지원해보세요.</p>
												<br><br>
											</div>
											<!-- Single Faq End -->
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 어떤 사람이 오늘의 대타에 지원할수 있나요?</h5>
												<p>A. 오늘의 대타는 다양성을 추구합니다. 누구든지 지원하기를 권장합니다.
												 지원자본인의 직무경험과 직무스킬에 맞는 일자리를 확인하신다면 지원하시는것을 망설이지 마세요.^^</p>
												<br><br>
											</div>
											<!-- Single Faq End -->
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 가능한 일자리를 어디서 구할수 있을까요?</h5>
												
												<ul>
													<li class="li-restyle">
													 <a href="${contextPath}/jobAds/listAll">일반구인</a>
													</li> 
													<li class="li-restyle">
													 <a href="${contextPath}/jobAds/listUrgency">긴급구인</a>
													</li>
													<li class="li-restyle">
													 <a href="${contextPath}/jobAds/listCountry">농어촌</a>
													</li>
												</ul>
												
											</div>
											<!-- Single Faq End -->
										</div>
										<div class="col-lg-6 pl-65 pl-md-15 pl-sm-15 pl-xs-15">
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 구직자가 지원을하면 수락이 어떻게 이뤄지는 걸까요?</h5>
												<p>A. 각각의 일반구인 ,긴급구인 , 농어촌 메뉴를통하여 지원을 하게되시면 
												지원내역을 사장님께서 확인하신후 수락하게됩니다.
												</p>
												<br><br>
											</div>
											<!-- Single Faq End -->
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 언제쯤 수락결과를 알게될까요?</h5>
												<p>A. 최대 2일내로 결과를 알 수 있습니다.</p>
												<br><br>
											</div>
											<!-- Single Faq End -->
											<!-- Single Faq Start -->
											<div class="single-faq">
												<h5>Q. 저의 이력서에대한 가이드라인이 있을까요?</h5>
												<p>A. 저희 오늘의 대타는 다양성을 추구합니다. 지원자의 배경은 중요하지않습니다.
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