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


	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 셀렉트 박스 start -->
	<form method="get" action="AreaSearch">
		<div class="container">
			<table class="table">
				<tbody>

					<div class="container">
						<table class="table">
							<tbody>

								
								<!-- 지역선택 -->
								<tr>
                        <th>지역</th>
                        <td>
                        <select class="form-select" id="applyRoles">
                              <option selected="">All roles</option>
                              <option>Design</option>
                              <option>Engineering</option>
                              <option>Product</option>
                              <option>Testing</option>
                              <option>Support</option>
                        </select>
                        </td>
                        <th>직종</th>
                        <td>
                        <select class="form-select" id="applyRoles">
                              <option selected="">All roles</option>
                              <option>Design</option>
                              <option>Engineering</option>
                              <option>Product</option>
                              <option>Testing</option>
                              <option>Support</option>
                        </select>
                        </td>
                        <th>근무시간</th>
                        <td>
                        <select class="form-select" id="applyRoles">
                              <option selected="">All roles</option>
                              <option>Design</option>
                              <option>Engineering</option>
                              <option>Product</option>
                              <option>Testing</option>
                              <option>Support</option>
                        </select>
                        </td>
                        
                     </tr>
								<!-- 붙여넣기 끝 -->
							

								

							</tbody>
						</table>
               <div class="field-item-submit" align="center"><button class="ht-btn theme-btn theme-btn-two" >검색</button></div>
      </div>

				</tbody>
			</table>

		</div>
	</form>
	<br>
	<br>
	<!-- 셀렉트 박스end -->
	<!-- 목록보기 -->
	
	<div class="container">
		<!-- 로그인양식 -->

		<!-- 로그인양식끝 -->
		<section class="content">
			<div class="table-responsive">
				<table class="table table-striped">
					<colgroup>
						<col style="width: 17%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 14%;">
						<col style="width: 15%;">
						<col style="width: 17%;">
					</colgroup>

					<thead>

						<tr>
							<th>가게번호</th>
							<th>날짜</th>
							<th>시간</th>
							<th>시급</th>
							<th>급구여부</th>
							<th>올린시간</th>
							<th>구인 인원</th>
				
						</tr>
					</thead>
					<c:forEach var="jobsend" items="${list }">
						<tr>
							<td class="tc"><a
								href="listAllDetail?s_number=${jobsend.s_number}">
									${jobsend.s_number} </a></td>
							<td class="tc">${jobsend.a_date}</td>
							<td class="tc">${jobsend.a_time}</td>
							<td class="tc">${jobsend.a_wage}</td>
							<td class="tc">${jobsend.a_urgency}</td>
							
							<td class="tc">${jobsend.ua_date }</td>
							<td class="tc">${jobsend.a_need }</td>


						</tr>
					</c:forEach>
				</table>

			</div>
			<table class="table table-striped">
				<tr>
					<td>
						<ul>
							<c:if test="${pageMaker.prev }">
								<a
									href='<c:url value="/jobAds/listAll?page=${pageMaker.makeSearch(pageMaker.startPage-1) }"/>'>
									이전</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="pageNum">
								<a href='<c:url value="/jobAds/listAll?page=${pageNum }"/>'>
									${pageNum }</a>                     		
							</c:forEach>
							<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
								<a
									href='<c:url value="/jobAds/listAll?page=${pageMaker.endPage+1 }"/>'>
									다음</a>
							</c:if>
						</ul>
					</td>
					<td><a href="${contextPath }/">홈으로</a></td>
				</tr>
			</table>

		</section>
		<form method="get" action="JobAdsSearch">
			<select name="option">
				<option value="s_number">가게번호</option>
				<option value="a_number">공고번호</option>
				<option value="a_wage">시급</option>

			</select> <input type="text" name="value"> <input type="submit"
				value="검색">
		</form>
	</div>
	
	<!-- 목록보기끝 -->

	<!-- 일반구인 리스트 Start -->
	<div
		class="job-section section pt-115 pt-lg-95 pt-md-75 pt-sm-55 pt-xs-45 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title-two mb-45 mb-xs-30">
						<h3 class="title">일반 구인공고 리스트</h3>
						<p>
							<i class="fas fa-users"></i>&nbsp;전국의 사장님들이 당신을 기다립니다
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- 일반구인 항목 Start -->
				<div class="col-lg-12">
					<div class="single-job style-two">
						<div class="info-top">
							<div class="job-info">
								<div class="job-info-inner">
									<div class="job-info-top">
										<div class="title-name">
											<h3 class="job-title">
												<a href="#">할리바게트 매탄점</a>
											</h3>
											<div class="employer-name">
												<!-- <a href="employer-details.html">구인자id</a> -->
												<span>할리사장 <i class="fas fa-star star-color"></i>3.8
												</span>
											</div>
										</div>
									</div>
									<div class="job-meta-two">
										<div class="field-salary_from">
											<i class="gj-icon gj-icon-money"></i>시급 - &#8361;10,000 /
											대타시간 - 4시간
										</div>
										<div class="field-datetime">
											<i class="lnr lnr-clock"></i>37분 전
										</div>
										<div class="field-map">
											<i class="lnr lnr-map-marker"></i>경기도 수원시 영통구 매탄동 133-5
										</div>
									</div>
									<div class="job-skill-tag">
										<a class="tag-cursor">베이커리</a><a class="tag-cursor">할리바게트</a><a
											class="tag-cursor">제품포장</a><a class="tag-cursor">쉬워요</a>
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
				<!-- 일반구인 항목 Start -->
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
												<span>BKfood부천 <i class="fas fa-star star-color"></i>3.6
												</span>
											</div>
										</div>
									</div>
									<div class="job-meta-two">
										<div class="field-salary_from">
											<i class="gj-icon gj-icon-money"></i>시급 - &#8361;9,500 / 대타시간
											- 5시간 30분
										</div>
										<div class="field-datetime">
											<i class="lnr lnr-clock"></i>3시간 20분 전
										</div>
										<div class="field-map">
											<i class="lnr lnr-map-marker"></i>경기도 부천시 원미구 부일로 766 BK백화점
											7층
										</div>
									</div>
									<div class="job-skill-tag">
										<a class="tag-cursor">푸드홀</a><a class="tag-cursor">주방보조</a><a
											class="tag-cursor">단순업무</a>
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
												<span>리처드대표 <i class="fas fa-star star-color"></i>4.2
												</span>
											</div>
										</div>
									</div>
									<div class="job-meta-two">
										<div class="field-salary_from">
											<i class="gj-icon gj-icon-money"></i>시급 - &#8361;25,000 /
											대타시간 - 8시간
										</div>
										<div class="field-datetime">
											<i class="lnr lnr-clock"></i>1일 전
										</div>
										<div class="field-map">
											<i class="lnr lnr-map-marker"></i>경기도 수원시 팔달구 인계동 738-64 2층
										</div>
									</div>
									<div class="job-skill-tag">
										<a class="tag-cursor">음향장비세팅</a><a class="tag-cursor">보조업무</a><a
											class="tag-cursor">콘서트장이동</a><a class="tag-cursor">힘많이필요</a><a
											class="tag-cursor">대기시간포함</a>
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
								<a href="job-details.html"><img
									src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo4.jpg"
									alt="logo"></a>
							</div>
							<div class="job-info">
								<div class="job-info-inner">
									<div class="job-info-top">
										<div class="saveJob for-listing">
											<span class="featured-label">featured</span><a
												class="job-type-label ml-20 mr-20">Full Time</a><a
												class="save-job " href="#quick-view-modal-container"
												data-toggle="modal"><i class="far fa-heart"></i></a>
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
								<a href="job-details.html"><img
									src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo5.jpg"
									alt="logo"></a>
							</div>
							<div class="job-info">
								<div class="job-info-inner">
									<div class="job-info-top">
										<div class="saveJob for-listing">
											<span class="featured-label">featured</span><a
												class="job-type-label ml-20 mr-20">Full Time</a><a
												class="save-job" href="#quick-view-modal-container"
												data-toggle="modal"><i class="far fa-heart"></i></a>
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
										<a href="#">Android</a><a href="#">app</a><a href="#">ReactJs</a><a
											href="#">Ruby</a>
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
								<a href="job-details.html"><img
									src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo6.jpg"
									alt="logo"></a>
							</div>
							<div class="job-info">
								<div class="job-info-inner">
									<div class="job-info-top">
										<div class="saveJob for-listing">
											<span class="featured-label">featured</span><a
												class="job-type-label ml-20 mr-20">Full Time</a><a
												class="save-job " href="#quick-view-modal-container"
												data-toggle="modal"><i class="far fa-heart"></i></a>
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
				<!-- 일반구인 항목 End -->
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<!-- ajax -->

	<!--  ajax끝 -->
	<!-- 자바스크립트 사용 -->
	<script>
	 function fn_gu(){
		 alert('수원시');
	 }
	
	
	</script>

	<!-- 자바 스크립트 사용end -->

</body>
</html>