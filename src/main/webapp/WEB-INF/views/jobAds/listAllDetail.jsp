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


							<p>${map.s_intro }</p>
							<p>마컷컬리 r팀 송파센터 상온/냉장 인원모집 운영안내 1.원하는날 근무가능 2.장기/단기 근무가능 3.주말
								10시/12시 주간조 운영x 4.다스 공정+3000 원 5.파트는 퇴근 셔틀만 운행 6.미성년자/군인/실업급여
								대상자 근무불가 *지원양식 *이름/생년월일/상온or냉장/근무조/근무 희망 날짜/개인정보 수집이용에 동의함 *예시)
								개구리/961225-3/상온/12시/0816/개인정보 수집이용에 동의함 -상온 근무장소 서울시 송파구 송파대로 55
								서울 복합 물류센터 D동 3층 컬리 r팀 상온 접수처 -냉장근무장소 서울시 송파구 송파대로 55 서울 복합 물류센터
								B동 지하 1층 컬리R팀 냉장 접수처 개인정보 수집,이용동의(필수) 1.개인정보 항목:성함, 생년월일,성별,
								희망근무일,셔틀노선 2.수집,이용목적: 근무 지원 및 채용 확정 등 의사소통 경로 지원자 식별 및 본인여부 확인,
								채용관련 상담,문의 등 원활한 의사소통 경로 확보 등 3. 보유기간:지원일로부터 1년 보관 후 파기 4. 동의를
								거부할 권리가 있으며, 동의를 거부할 경우 채용 관련하여 제한이 있을 수 있습니다.</p>
							<h3>마컷컬리 r팀 송파센터 상온/냉장 인원모집</h3>
							<p>운영안내 1.원하는날 근무가능 2.장기/단기 근무가능 3.주말 10시/12시 주간조 운영x 4.다스
								공정+3000 원 5.파트는 퇴근 셔틀만 운행 6.미성년자/군인/실업급여 대상자 근무불가 *지원양식
								*이름/생년월일/상온or냉장/근무조/근무 희망 날짜/개인정보 수집이용에 동의함 *예시)
								개구리/961225-3/상온/12시/0816/개인정보 수집이용에 동의함 -상온 근무장소 서울시 송파구 송파대로 55
								서울 복합 물류센터 D동 3층 컬리 r팀 상온 접수처 -냉장근무장소 서울시 송파구 송파대로 55 서울 복합 물류센터
								B동 지하 1층 컬리R팀 냉장 접수처</p>
							<p>개인정보 수집,이용동의(필수) 1.개인정보 항목:성함, 생년월일,성별, 희망근무일,셔틀노선
								2.수집,이용목적: 근무 지원 및 채용 확정 등 의사소통 경로 지원자 식별 및 본인여부 확인, 채용관련 상담,문의
								등 원활한 의사소통 경로 확보 등 3. 보유기간:지원일로부터 1년 보관 후 파기 4. 동의를 거부할 권리가 있으며,
								동의를 거부할 경우 채용 관련하여 제한이 있을 수 있습니다. 근무 전 숙지사항 >[마켓컬리 근무중 혹은 퇴사한
								상용직 근무자] 현재 컬리 상용직 근무중인 사원은 일용직 근무가 불가능 합니다. 컬리 상용직 퇴사 후 3 개월이
								지나지 않은 사원은 일용직 근무가 불가능 합니다.(3개월 이후 가능) >[마켓컬리 전 센터 근무시 11시간 휴게
								방침] 전일 근무종료시간 기준 11시간 휴식 후 근무가 가능 근로자 분들의 건강과 안전한 근무 환경을 위해 지원할때
								꼭 참고하시기 바랍니다. >[일급지급보류] 근무 중 이탈자,[컬리웍스&출근부]에 서명 없이 퇴근시 급여 지급보류

								>[고용보험,4대보험] 하루이상 근무시 의무적으로 고용보험 신고처리가 됩니다. 고용 보험가입(일급에서 0.9%
								공제) / 월 8일 이상 근무시 4대 보험 필수 >[주휴수당] 주 5일 (월~일기준)근무 시 주휴수당 추가
								지급(익월 5일) >[연장급여] 야간 1시간 연장시 18,320원 추가 지급/연장근무 발생 시 연장수당
								추가지급(10분 단위로 계산) [연장근무 의무x 권유사항]</p>
							<ul>

								<li>${map.s_picture1 }</li>
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
								
								<a class="ht-btn text-center" href="#">지원하기<i class="ml-10 mr-0 fa fa-paper-plane"></i></a>
							
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