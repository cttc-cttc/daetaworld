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
					<!-- 상단표시 -->
					<div
						class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content">
										<ul class="page-breadcrumb">
											<li><a href="${contextPath}">Home</a></li>
											
											
										</ul>
										<h1>${map.s_name}</h1>
									</div>
									<div class="job-meta-detail">
										<ul>
											<li class="posted"><i class="lnr lnr-clock"></i><span
												class="text">구인공고 올린시간:</span><span class="time">
												${map.ua_date } </span></li>
											
										</ul>
										<!-- 붙여놓기 시작 -->
											
					<div class="row align-items-center">
						<div class="col-lg-7">
							<div class="employer-head-info">

								
								가게등록날짜:${map.s_date } 가게번호:${map.s_number} 공고번호:${map.a_number}<br>
								

							</div>
							<br> <br>
							<!-- 시급,일하는시간,날짜 -->
							<div class="row no-gutters">

								<div class="col-lg-4 col-md-6">
									<!-- Single Meta Field Start -->
									<div class="single-meta-field">
										<div class="field-label">
											<i class="lnr lnr-thumbs-up"></i><span>시급</span>
										</div>
										<div class="field-value salary">${map.a_wage }/시간</div>
									</div>
									<!-- Single Meta Field Start -->
								</div>
								<div class="col-lg-4 col-md-6">
									<!-- Single Meta Field Start -->
									<div class="single-meta-field">
										<div class="field-label">
											<i class="lnr lnr-briefcase"></i><span>일하는 시간 </span>
										</div>
										<div class="field-value">
											<a class="fw-600">${map.a_time }</a>
										</div>
									</div>
									<!-- Single Meta Field Start -->
								</div>
								<div class="col-lg-4 col-md-6">
									<!-- Single Meta Field Start -->
									<div class="single-meta-field">
										<div class="field-label">
											<i class="lnr lnr-briefcase"></i><span>날짜 </span>
										</div>
										<div class="field-value">
											<a class="fw-600">${map.a_date }</a>
										</div>
									</div>
									<!-- Single Meta Field Start -->
								</div>


							</div>

							<!-- 시급,일하는시간,날짜 끝 -->
						</div>
					</div>
										<!-- 붙여놓기 끝 -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 상단표시끝 -->
				

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
							<h2 class="sidebar-title">가게 위치</h2>
							<div class="sidebar-map">
								<!-- 카카오 지도 -->
								<div id="map" style="width: 500px; height: 400px;"></div>
								<div class="single-meta-field">
									<div class="field-label">
										<i class="lnr lnr-map-marker"></i><span>주소 </span>
									</div>
									<div class="field-value">
										<a>${map.s_address1}</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="col-lg-8 order-lg-1 order-1 pr-55 pr-md-15 pr-sm-15 pr-xs-15">
					<div class="employer-main-content">
						<div class="field-description">

							<h3>가게소게</h3>
							<p>${map.s_intro }</p>

							<ul>


								<p>등록된 사진:</p>
								<c:if test="${map.s_picture1 != null }">
									<img
										src="${contextPath }/displayShop?fileName=${map.s_picture1}"
										style="width: 300px;">
									<input type="hidden" name="preS_picture1"
										value="${map.s_picture1 }">
								</c:if>
								<c:if test="${map.s_picture2 != null }">
									<img
										src="${contextPath }/displayShop?fileName=${map.s_picture2}"
										style="width: 300px;">
									<input type="hidden" name="preS_picture2"
										value="${map.s_picture2 }">
								</c:if>
								<c:if test="${map.s_picture3 != null }">
									<img
										src="${contextPath }/displayShop?fileName=${map.s_picture3}"
										style="width: 300px;">
									<input type="hidden" name="preS_picture3"
										value="${map.s_picture3 }">
								</c:if>
								<li>가게주소:${map.s_address1}</li>
							</ul>
						</div>
						<div class="field-skills">
							<h3>구인 인원</h3>
							<ul class="skill-tag">
								<li>
									<h6>${map.a_need }명</h6>
								</li>
							</ul>
							<ul>
								<li>${map.s_tag1 } , ${map.s_tag2 } ,${map.s_tag3 } ,${map.s_tag4 } , ${map.s_tag5 }</li>
								
							</ul>
						</div>
						<p>
							<strong>어떻게 지원하면 될까요?</strong>
						</p>
						<p>바로 아래의 '지원하기' 버튼을 눌러주세요~!</p>
						<div class="review-area pb-60 pb-sm-30 pb-xs-30">
							<div class="review-container">

								<!-- 구직 신청하기 -->
								<c:if test="${result == 0}">
									<a class="ht-btn text-center" type="button"
										onclick="location.href='${contextPath}/employeeMapper/jobApply?a_number=${map.a_number}&m_id=${loginInfo.m_id}'">지원하기<i
										class="ml-10 mr-0 fa fa-paper-plane"></i></a>
								</c:if>

								<!-- 지원한 공고 = 신청불가 -->
								<c:if test="${result == 1}">
									<a class="ht-btn text-center" type="text">이미 지원한 공고입니다<i
										class="ml-10 mr-0 fa fa-paper-plane"></i></a>
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

	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp"%>
	<script
		src="${contextPath}/resources/assets/js/vendor/modernizr-3.10.0.min.js"></script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6140eb0f3d4e274049880e659b9d48b&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder
				.addressSearch(
						'${map.s_address1}',
						function(result, status) {

							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);

								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div id="s-name" style="text-align:center; padding:0 1rem;">'
													+ '${map.s_name}'
													+ '</div>'
										});
								infowindow.open(map, marker);
								$('#s-name').parent().css('width', '100%');
								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>
</body>
</html>