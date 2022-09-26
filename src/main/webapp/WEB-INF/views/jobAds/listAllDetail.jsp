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
		<!-- 상단 메뉴 end-->

		<br> <br> <br> <br> <br> <br>
		<div class="container">
			<!-- 붙여넣기 -->
			<!-- 윗대가리시작 -->
			<div class="breadcrumb-section section pt-60 pt-sm-50 pt-xs-40">
				<div class="container sb-border-two pb-60 pb-sm-50 pb-xs-40">
					<h1>${map.s_name}</h1>
					<div class="row align-items-center">
						<div class="col-lg-7">
							<div class="employer-head-info">

								<br> <br> <br> <br> <br>
								가게등록날짜:${map.s_date } 공고번호:${map.s_number}
					


							</div>
							<!-- 본문시작 -->

							<!-- 본문끝 -->
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 윗대가리끝 -->

		<!-- 붙여넣기 끝 -->
	</div>


	<br>
	<br>
	<br>
	<div
		class="employer-details-section section pt-120 pt-lg-100 pt-md-80 pt-sm-50 pt-xs-40 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 order-lg-2 order-2 mt-sm-60 mt-xs-50">
					<div class="sidebar-wrapper-three">

						<div class="common-sidebar-widget sidebar-three">
							<h2 class="sidebar-title">Location</h2>
							<div class="sidebar-map">
								<iframe class="contact-map"
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2136.986005919501!2d-73.9685579655238!3d40.75862446708152!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258e4a1c884e5%3A0x24fe1071086b36d5!2sThe%20Atrium!5e0!3m2!1sen!2sbd!4v1585132512970!5m2!1sen!2sbd"
									allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
							</div>
						</div>
					</div>
				</div>
				<div
					class="col-lg-8 order-lg-1 order-1 pr-55 pr-md-15 pr-sm-15 pr-xs-15">
					<div class="employer-main-content">
						<div class="field-description">

							
							<p>${map.s_intro } </p>
							${map.s_tag1 } ,${map.s_tag2 } ,${map.s_tag3 } , ${map.s_tag4 }
							<ul>

								<li><img src="/deataworld/resources/images/shop_picture/${map.s_picture1 }" style="width:50%; height:20%"></li>
								<li>가게주소:${map.s_address1}</li>
							</ul>
						</div>
						<div class="field-skills">
							<h3>구인수</h3>
							<ul class="skill-tag">
								<li>
									<h6>${map.a_need }명</h6>
								</li>

							</ul>
						</div>
						<div class="review-area pb-60 pb-sm-30 pb-xs-30">
							<div class="review-container">
								
									<c:if test="${result == 0}">
										<a class="ht-btn text-center" type="button" onclick="location.href='${contextPath}/employeeMapper/jobApply?a_number=${map.a_number}'">지원하기<i class="ml-10 mr-0 fa fa-paper-plane"></i></a>
									</c:if>
									
									<c:if test="${result == 1}">
										<a class="ht-btn text-center" type="text">이미 지원한 공고입니다<i class="ml-10 mr-0 fa fa-paper-plane"></i></a>
									</c:if>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


	</div>

	</div>
	</div>
	<!-- 일반구인 리스트 End -->

	<!-- 최저시급 Start -->
	<div
		class="featured-employer section bg-image-proparty bg_image--2 pt-110 pt-lg-90 pt-md-70 pt-sm-50 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50 balance-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title-two mb-45 mb-xs-30">
						<h3 class="title">
							2022년도 최저시급 : <span id="balance" class="counter">9,160</span>원
						</h3>
					</div>
				</div>
				<div class="col-lg-12 middle-align">
					<div class="col-lg-6">
						<table class="table table-bordered" id="balance-table">
							<thead class="thead-dark">
								<tr>
									<th scope="col"></th>
									<th scope="col">주간</th>
									<th scope="col">야간</th>
								</tr>
							</thead>
							<tbody>
								<tr class="tr-background">
									<th scope="row">시급</th>
									<td><strong class="counter" id="money1">9,160</strong>원</td>
									<td><strong class="counter" id="money2">13,740</strong>원</td>
								</tr>
								<tr class="tr-background">
									<th scope="row">일급</th>
									<td><strong class="counter" id="money3">73,280</strong>원</td>
									<td><strong class="counter" id="money4">109,920</strong>원</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-lg-12 middle-align">
					<div class="col-lg-6">
						<span>*<strong>일급</strong> 하루 8시간 근무 기준
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 최저시급 End -->

	<!-- 직업추천 & 대타자 평점 랭킹 Start -->
	<div
		class="blog-section section pb-120 pb-lg-100 pb-md-80 pb-sm-50 pb-xs-40">
		<div class="container st-border">
			<div class="row no-gutters">
				<div class="col-lg-6">
					<!-- 직업추천 Start -->
					<div class="simple-work">
						<div class="section-title-two text-left">
							<h3 class="title">직업 추천</h3>
						</div>
						<div class="work-list-wrap">
							<div class="single-list-work mb-20">
								<div class="work-content">
									<h4 class="title">오늘 당신에게 맞는 직업은?</h4>
								</div>
								<div class="work-content margin-left-auto">
									<a class="ht-btn header-btn btn-style" href="#">직업 추천받기</a>
								</div>
							</div>

							<!-- Single List Work Start -->
							<div class="single-list-work mb-20">
								<div class="work-icon">
									<img
										src="${contextPath}/resources/assets/images/work/work-icon1.png"
										alt="">
								</div>
								<div class="work-content">
									<h4 class="title">활동성</h4>
									<p>당신은 몸을 많이 움직이는 활동적인 일을 원하거나, 그렇지 않은 사무적인 일을 원할 수 있습니다.</p>
								</div>
							</div>
							<!-- Single List Work End -->

							<!-- Single List Work Start -->
							<div class="single-list-work mb-20">
								<div class="work-icon">
									<img
										src="${contextPath}/resources/assets/images/work/work-icon2.png"
										alt="">
								</div>
								<div class="work-content">
									<h4 class="title">고객 응대</h4>
									<p>당신은 고객들을 직접 응대하는 일을 원하거나, 그렇지 않은 비대면 업무를 원할 수 있습니다.</p>
								</div>
							</div>
							<!-- Single List Work End -->

							<!-- Single List Work Start -->
							<div class="single-list-work mb-20">
								<div class="work-icon">
									<img
										src="${contextPath}/resources/assets/images/work/work-icon3.png"
										alt="">
								</div>
								<div class="work-content">
									<h4 class="title">접근성</h4>
									<p>당신은 거주지 주변의 가까운 곳을 선호하거나, 오늘 하루는 멀리 나가보는 것을 선호할 수 있습니다.</p>
								</div>
							</div>
							<!-- Single List Work End -->

						</div>
					</div>
					<!-- 직업추천 End -->
				</div>
				<div class="col-lg-6">
					<!-- 대타자 평점 랭킹 Start -->
					<div class="blog-area">
						<div class="section-title-two text-left">
							<h3>대타자 평점 랭킹</h3>
						</div>

						<div class="blog-wrap ranking">
							<!-- 랭킹 정보 Start -->
							<div class="single-list-blog">
								<div class="col-lg-4">
									<i class="fas fa-trophy trophy-gold"></i> 1등
								</div>
								<div class="col-lg-4">
									<i class="lnr lnr-user"></i> 대타매니아
								</div>
								<div class="col-lg-4">
									<i class="fas fa-star star-color"></i> 4.8
								</div>
							</div>
							<!-- 랭킹 정보 End -->
							<!-- 랭킹 정보 Start -->
							<div class="single-list-blog">
								<div class="col-lg-4">
									<i class="fas fa-trophy trophy-silver"></i> 2등
								</div>
								<div class="col-lg-4">
									<i class="lnr lnr-user"></i> 현타왕
								</div>
								<div class="col-lg-4">
									<i class="fas fa-star star-color"></i> 4.6
								</div>
							</div>
							<!-- 랭킹 정보 End -->
							<!-- 랭킹 정보 Start -->
							<div class="single-list-blog">
								<div class="col-lg-4">
									<i class="fas fa-trophy trophy-bronze"></i> 3등
								</div>
								<div class="col-lg-4">
									<i class="lnr lnr-user"></i> 하루살이
								</div>
								<div class="col-lg-4">
									<i class="fas fa-star star-color"></i> 4.3
								</div>
							</div>
							<!-- 랭킹 정보 End -->
							<!-- 랭킹 정보 Start -->
							<div class="single-list-blog">
								<div class="col-lg-4">
									<i class="fas fa-trophy icon-hidden"></i> 4등
								</div>
								<div class="col-lg-4">
									<i class="lnr lnr-user"></i> 제발쉬운일z
								</div>
								<div class="col-lg-4">
									<i class="fas fa-star star-color"></i> 4.0
								</div>
							</div>
							<!-- 랭킹 정보 End -->
							<!-- 랭킹 정보 Start -->
							<div class="single-list-blog">
								<div class="col-lg-4">
									<i class="fas fa-trophy icon-hidden"></i> 5등
								</div>
								<div class="col-lg-4">
									<i class="lnr lnr-user"></i> 의외로열심히함
								</div>
								<div class="col-lg-4">
									<i class="fas fa-star star-color"></i> 3.9
								</div>
							</div>
							<!-- 랭킹 정보 End -->
							<div class="col-lg-12">
								<p class="ranking-info">
									*랭킹은 <strong>매월 1일</strong>에 초기화, <strong>매월 말일</strong>에 정산을
									진행합니다.
								</p>
								<p class="ranking-info">
									*정산 직후 랭킹 <strong>1, 2, 3등</strong>의 회원분께는 소정의 상품을 지급합니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 대타자 평점 랭킹 End -->
				</div>
			</div>
		</div>
	</div>
	<!-- 직업추천 & 대타자 평점 랭킹 End -->

	<!-- 농어촌 & 돌봄 구인 Start -->
	<div class="cta-section section bg_color--4 pt-50 pb-50">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-8 col-sm-12 col-12">
					<div class="call-content text-center text-lg-left">
						<h3 class="title">
							<span>오늘의 대타에서는</span>
						</h3>
						<h3 class="title">
							농어촌 구인 <span>&</span> 돌봄 구인<span>에도 지원할 수 있습니다.</span>
						</h3>
						<p>사회적 인식이 얕은 곳 까지 도움의 손길을 내어 드리고 싶습니다.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12">
					<div class="call-btn text-center text-lg-right">
						<a class="ht-btn green-btn link-btn" href="#">농어촌 구인 지원하기</a> <a
							class="ht-btn green-btn link-btn" href="#">돌봄 구인 지원하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 농어촌 & 돌봄 구인 End -->

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
	<script
		src="${contextPath}/resources/assets/js/vendor/modernizr-3.10.0.min.js"></script>


</body>
</html>