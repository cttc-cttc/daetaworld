<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">

<body class="template-color-3">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="include/header.jsp" %>
		</header>
		<!-- 상단 메뉴 end-->
		
		<!-- 급구 리스트 start-->
		<div class="hero-section section position-relative">
			<!--Hero Item start-->
			<div class="hero-item hero-item-three bg_image-v3">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<!--Hero Content start-->
							<div class="container">
								<div class="row">
									<div class="col-lg-12">
										<div class="hero-content-4 left">
											<h2 class="title">대타가 필요할 땐 오늘의 대타</h2>
											<h3 class="sub-title"><span id="sub-title2">오늘 할 대타를 내일로 미루지 말자!!</span></h3>
											<p id="urgency-title"><i class="fas fa-bullhorn" id="urgency-icon"></i>&nbsp;지금 뜨는 급구 리스트</p>
										</div>
									</div>
								</div>
								<div class="row employer-slider-two">
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-1.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">밥스터치 수원점</a>
												</h4>
												<div class="meta">
													<div class="star">
														<span class="urgency-money">시급 - &#8361;10,800</span>
														<i class="fas fa-star"></i> <span class="score">4.3</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 수원시 팔달구 덕영대로 899 </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-2.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo2.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">에피드 네일 평택점</a>
												</h4>
												<div class="meta">
													<div class="star">
														<span class="urgency-money">시급 - &#8361;12,500</span>
														<i class="fas fa-star"></i> <span class="score">4.6</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 평택시 비전동 EA아울렛 7층 </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-3.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo3.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">루트 스튜디오 군포점 </a>
												</h4>
												<div class="meta">
													<div class="star">
														<span class="urgency-money">시급 - &#8361;11,000</span>
														<i class="fas fa-star"></i> <span class="score">4.2</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>경기도 군포시 당동 740-2번지 </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-4.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">Vsmarttech </a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">3.9</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>London Euston,London,UK </span><span class="count-job theme-color">1 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
									<div class="col-lg-4">
										<!-- 급구 항목 Start -->
										<div class="single-employer-item">
											<div class="image-featured">
												<img src="${contextPath}/resources/assets/images/employer/cover-image-employer-5.jpg" alt="">
											</div>
											<div class="item-content">
												<div class="avatar">
													<img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg" alt="">
												</div>
												<h4 class="title">
													<a href="employer-details.html">Radio Game </a>
												</h4>
												<div class="meta">
													<div class="star">
														<i class="fas fa-star"></i> <span class="score">4.5</span>
													</div>
													<span class="location"><i class="lnr lnr-map-marker"></i>New York,NY,USA </span><span class="count-job theme-color">2 Jobs </span>
												</div>
											</div>
										</div>
										<!-- 급구 항목 End -->
									</div>
								</div>
							</div>
							<!--Hero Content end-->
						</div>
					</div>
				</div>
			</div>
			<!--Hero Item end-->
		</div>
		<!-- 급구 리스트 end-->
		<div class="container">
			<div class="row">
				<hr class="hr-style">
			</div>
		</div>

		<!-- 일반구인 리스트 Start -->
		<div class="job-section section pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">일반 구인공고 리스트</h3>
							<p><i class="fas fa-users"></i>&nbsp;전국의 사장님들이 당신을 기다립니다</p>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach var="common_ads" items="${common_list }">
						<!-- 일반구인 항목 Start -->
						<div class="col-lg-12">
							<div class="single-job style-two">
								<div class="info-top">
									<div class="job-info">
										<div class="job-info-inner">
											<div class="job-info-top">
												<div class="title-name">
													<h3 class="job-title">
														<a href="#">${common_ads.a_number }</a>
													</h3>
													<div class="employer-name">
														<!-- <a href="employer-details.html">구인자id</a> -->
														<span>할리사장 <i class="fas fa-star star-color"></i>3.8</span>
													</div>
												</div>
											</div>
											<div class="job-meta-two">
												<div class="field-salary_from">
													<i class="gj-icon gj-icon-money"></i>시급 - &#8361;10,000 / 대타시간 - 4시간
												</div>
												<div class="field-datetime">
													<i class="lnr lnr-clock"></i>37분 전
												</div>
												<div class="field-map">
													<i class="lnr lnr-map-marker"></i>경기도 수원시 영통구 매탄동 133-5
												</div>
											</div>
											<div class="job-skill-tag">
												<a class="tag-cursor">베이커리</a><a class="tag-cursor">할리바게트</a><a class="tag-cursor">제품포장</a><a class="tag-cursor">쉬워요</a>
											</div>
										</div>
									</div>
									<div class="shop-image">
										<img src="${contextPath}/resources/assets/images/blog/blog2.jpg">
									</div>
								</div>
							</div>
						</div>
						<!-- 일반구인 항목 End -->
					</c:forEach>
					<%-- <!-- 일반구인 항목 Start -->
					<div class="col-lg-12">
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="title-name">
												<h3 class="job-title">
													<a href="#">BK FOODHALL 부천점</a>
												</h3>
												<div class="employer-name">
													<!-- <a href="employer-details.html">구인자id</a> -->
													<span>BKfood부천 <i class="fas fa-star star-color"></i>3.6</span>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>시급 - &#8361;9,500 / 대타시간 - 5시간 30분
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>3시간 20분 전
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>경기도 부천시 원미구 부일로 766 BK백화점 7층
											</div>
										</div>
										<div class="job-skill-tag">
											<a class="tag-cursor">푸드홀</a><a class="tag-cursor">주방보조</a><a class="tag-cursor">단순업무</a>
										</div>
									</div>
								</div>
								<div class="shop-image">
									<img src="${contextPath}/resources/assets/images/blog/blog3.jpg">
								</div>
							</div>
						</div>
					</div>
					<!-- 일반구인 항목 End -->
					<!-- 일반구인 항목 Start -->
					<div class="col-lg-12">
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="title-name">
												<h3 class="job-title">
													<a href="#">리처드 스퀘어즈</a>
												</h3>
												<div class="employer-name">
													<!-- <a href="employer-details.html">구인자id</a> -->
													<span>리처드대표 <i class="fas fa-star star-color"></i>4.2</span>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>시급 - &#8361;25,000 / 대타시간 - 8시간
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>1일 전
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>경기도 수원시 팔달구 인계동 738-64 2층
											</div>
										</div>
										<div class="job-skill-tag">
											<a class="tag-cursor">음향장비세팅</a><a class="tag-cursor">보조업무</a><a class="tag-cursor">콘서트장이동</a><a class="tag-cursor">힘많이필요</a><a class="tag-cursor">대기시간포함</a>
										</div>
									</div>
								</div>
								<div class="shop-image">
									<img src="${contextPath}/resources/assets/images/blog/blog5.jpg">
								</div>
							</div>
						</div>
					</div>
					<!-- 일반구인 항목 End -->
					<!-- 일반구인 항목 Start -->
					<div class="col-lg-12">
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Unity Developer</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Vsmarttech</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>8 months ago
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>Hanoi,Hanoi
											</div>
										</div>
										<div class="job-skill-tag">
											<a href="#">NodeJS</a><a href="#">PHP</a><a href="#">Python</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 일반구인 항목 End -->
					<!-- 일반구인 항목 Start -->
					<div class="col-lg-12">
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job" href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">Receptionist</a>
												</h3>
												<div class="employer-name">
													<a href="employer-details.html">Digital Vine</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>8 months ago
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>Hanoi,Hanoi
											</div>
										</div>
										<div class="job-skill-tag">
											<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a href="#">Ruby</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 일반구인 항목 End -->
					<!-- 일반구인 항목 Start -->
					<div class="col-lg-12">
						<div class="single-job style-two">
							<div class="info-top">
								<div class="job-image">
									<a href="job-details.html"><img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo6.jpg" alt="logo"></a>
								</div>
								<div class="job-info">
									<div class="job-info-inner">
										<div class="job-info-top">
											<div class="saveJob for-listing">
												<span class="featured-label">featured</span><a class="job-type-label ml-20 mr-20">Full Time</a><a class="save-job " href="#quick-view-modal-container" data-toggle="modal"><i class="far fa-heart"></i></a>
											</div>
											<div class="title-name">
												<h3 class="job-title">
													<a href="job-details.html">iOS Developer</a>
												</h3>
												<div class="employer-name">
													<a href="job-details.html">InwaveThemes</a>
												</div>
											</div>
										</div>
										<div class="job-meta-two">
											<div class="field-salary_from">
												<i class="gj-icon gj-icon-money"></i>$500 - $1,000 / month
											</div>
											<div class="field-datetime">
												<i class="lnr lnr-clock"></i>8 months ago
											</div>
											<div class="field-map">
												<i class="lnr lnr-map-marker"></i>Seville,Andalusia
											</div>
										</div>
										<div class="job-skill-tag">
											<a href="#">app</a><a href="#">ios</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 일반구인 항목 End --> --%>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="all-job">
							<p>
								전체 구인공고를 보시려면 우측 링크를 클릭하세요. <a href="#">일반구인 전체보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 일반구인 리스트 End -->
		
		<!-- 최저시급 Start -->
		<div class="featured-employer section bg-image-proparty bg_image--2 pt-110 pt-lg-90 pt-md-70 pt-sm-50 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50 balance-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section-title-two mb-45 mb-xs-30">
							<h3 class="title">2022년도 최저시급 : <span id="balance" class="counter">9,160</span>원</h3>
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
							<span>*<strong>일급</strong> 하루 8시간 근무 기준</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 최저시급 End -->
		
		<!-- 직업추천 & 대타자 평점 랭킹 Start -->
		<div class="blog-section section pb-120 pb-lg-100 pb-md-80 pb-sm-50 pb-xs-40">
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
										<a class="ht-btn header-btn btn-style" href="${contextPath}/jobAds/listRecommendation">직업 추천받기</a>
									</div>
								</div>
								
								<!-- Single List Work Start -->
								<div class="single-list-work mb-20">
									<div class="work-icon">
										<img src="${contextPath}/resources/assets/images/work/work-icon1.png" alt="">
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
										<img src="${contextPath}/resources/assets/images/work/work-icon2.png" alt="">
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
										<img src="${contextPath}/resources/assets/images/work/work-icon3.png" alt="">
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
									<div class="col-lg-4"><i class="fas fa-trophy trophy-gold"></i> 1등</div>
									<div class="col-lg-4"><i class="lnr lnr-user"></i> 대타매니아</div>
									<div class="col-lg-4"><i class="fas fa-star star-color"></i> 4.8</div>
								</div>
								<!-- 랭킹 정보 End -->
								<!-- 랭킹 정보 Start -->
								<div class="single-list-blog">
									<div class="col-lg-4"><i class="fas fa-trophy trophy-silver"></i> 2등</div>
									<div class="col-lg-4"><i class="lnr lnr-user"></i> 현타왕</div>
									<div class="col-lg-4"><i class="fas fa-star star-color"></i> 4.6</div>
								</div>
								<!-- 랭킹 정보 End -->
								<!-- 랭킹 정보 Start -->
								<div class="single-list-blog">
									<div class="col-lg-4"><i class="fas fa-trophy trophy-bronze"></i> 3등</div>
									<div class="col-lg-4"><i class="lnr lnr-user"></i> 하루살이</div>
									<div class="col-lg-4"><i class="fas fa-star star-color"></i> 4.3</div>
								</div>
								<!-- 랭킹 정보 End -->
								<!-- 랭킹 정보 Start -->
								<div class="single-list-blog">
									<div class="col-lg-4"><i class="fas fa-trophy icon-hidden"></i> 4등</div>
									<div class="col-lg-4"><i class="lnr lnr-user"></i> 제발쉬운일z</div>
									<div class="col-lg-4"><i class="fas fa-star star-color"></i> 4.0</div>
								</div>
								<!-- 랭킹 정보 End -->
								<!-- 랭킹 정보 Start -->
								<div class="single-list-blog">
									<div class="col-lg-4"><i class="fas fa-trophy icon-hidden"></i> 5등</div>
									<div class="col-lg-4"><i class="lnr lnr-user"></i> 의외로열심히함</div>
									<div class="col-lg-4"><i class="fas fa-star star-color"></i> 3.9</div>
								</div>
								<!-- 랭킹 정보 End -->
								<div class="col-lg-12">
									<p class="ranking-info">*랭킹은 <strong>매월 1일</strong>에 초기화, <strong>매월 말일</strong>에 정산을 진행합니다.</p>
									<p class="ranking-info">*정산 직후 랭킹 <strong>1, 2, 3등</strong>의 회원분께는 소정의 상품을 지급합니다.</p>
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
							<h3 class="title"><span>오늘의 대타에서는</span></h3>
							<h3 class="title">
								농어촌 구인<span>에도 지원하실 수 있습니다.</span>
							</h3>
							<p>사회적 인식이 얕은 곳 까지 도움의 손길을 내어 드리고 싶습니다.</p>
						</div>
					</div>
					<div class="col-lg-4 col-sm-12 col-12">
						<div class="call-btn text-center text-lg-right">
							<a class="ht-btn green-btn link-btn" href="#">농어촌 구인 지원하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 농어촌 & 돌봄 구인 End -->
		
		<%@ include file="include/footer.jsp" %>
		
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
</body>
</html>