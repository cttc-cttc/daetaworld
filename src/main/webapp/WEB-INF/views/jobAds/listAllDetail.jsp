<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>구인공고 상세보기</title>



<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/index.css">
<style>
	.info {
		list-style: none !important;
	}
	.info > li {
		margin-top: 0.5rem;
	}
	.info-tag {
	    display: inline-block;
	    font-size: 14px;
	    font-weight: 700;
	    padding: 0 10px;
	    line-height: 24px;
	    margin-top: 5px;
	    margin-right: 5px;
	    border-radius: 3px;
	    background: #eff1f8;
	    color: #999;
	}
	.apply-btn:hover {
		color: #eee !important;
	}
</style>
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
											
											<c:if test="${map.del != 0 }">
												<li>
												<span style="background-color: #ff2626;
															display: inline-block;
															padding: 0 7px;
															color: #fff;
															border-radius: 3px;">삭제된 공고</span>
												</li>
											</c:if>
											
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

								
								가게등록날짜:${map.s_date } <br>
								

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
										<div class="field-value salary">${map.a_wage }&#8361;</div>
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

							<h3>가게소개</h3>
							<p>${map.s_intro }</p>

							<ul class="info">


								<li>등록된 사진:</li>
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
								<li>가게주소: ${map.s_address1}</li>
							</ul>
						</div>
						<div class="field-skills">
							<h3>구인 인원</h3>
							<ul class="skill-tag">
								<li>
									<h6>${map.a_need }명</h6>
								</li>
							</ul>
							<ul class="info">
								<li>
									<span class="info-tag">${map.s_tag1 }</span>
									<span class="info-tag">${map.s_tag2 }</span>
									<span class="info-tag">${map.s_tag3 }</span>
									<span class="info-tag">${map.s_tag4 }</span>
									<span class="info-tag">${map.s_tag5 }</span>
								</li>
							</ul>
						</div>
						
						<c:if test="${map.m_type == 1 || loginInfo.m_id == null}">
						<p>
							<strong>어떻게 지원하면 될까요?</strong>
						</p>
						<p>바로 아래의 '지원하기' 버튼을 눌러주세요~!</p>
						</c:if>
						
						<div class="review-area pb-60 pb-sm-30 pb-xs-30">
							<div class="review-container">
								
									<!-- 신청 - 신청취소 - 재신청 할때  -->
								<c:choose>
									<c:when test="${map.m_type == 1 && result == 9}">
										<a class="ht-btn text-center apply-btn" type="button"
										onclick="location.href='${contextPath}/employeeMapper/reApply?a_number=${map.a_number}&m_id=${loginInfo.m_id}&employer_id=${map.m_id }&s_name=${map.s_name }'">다시 지원하기<i
										class="ml-10 mr-0 fa fa-paper-plane"></i></a>										
									</c:when>
									
									<c:when test="${map.m_type == 1 && result == 0 || loginInfo.m_id == null}">
										<a class="ht-btn text-center apply-btn" type="button"
										onclick="location.href='${contextPath}/employeeMapper/jobApply?a_number=${map.a_number}&m_id=${loginInfo.m_id}&employer_id=${map.m_id }&s_name=${map.s_name }'">지원하기<i
										class="ml-10 mr-0 fa fa-paper-plane"></i></a>										
									</c:when>
									
									<c:when test="${map.m_type == 1 && result == 1}">
										<a class="ht-btn text-center apply-btn" type="text">이미 지원한 공고입니다<i
										class="ml-10 mr-0 fa fa-paper-plane"></i></a>
									</c:when>
									
									<c:when test="${introResult == 9}">
										<script type="text/javascript">
											$(document).ready(function(){
											  alert("등록된 자기소개서가 없습니다.");
											});
										</script>
									</c:when>
								</c:choose>
								
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="row" style="justify-content: end;">
				<a class="btn btn-success" href="javascript:history.back()" style="margin-right: 5px;">목록</a>
				<%-- 로그인 유저가 타인의 공고를 볼 때만 신고버튼 보임 --%>
				<c:if test="${loginInfo != null && loginInfo.m_id != map.m_id}">
					<div class="dropdown" style="display: inline;">
					  <button class="btn btn-secondary dropdown-toggle" type="button" id="report" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    신고
					  </button>
					  <div class="dropdown-menu" aria-labelledby="report">
					    <%-- 넘기는 파라미터 : rCode, rType, (bNumber), (cNumber), aNumber, mId, rId --%>
					    <a class="dropdown-item" href="javascript:report(1, 5, -1, -1, ${map.a_number}, '${map.m_id}', '${loginInfo.m_id}')">광고</a>
					    <a class="dropdown-item" href="javascript:report(2, 5, -1, -1, ${map.a_number}, '${map.m_id}', '${loginInfo.m_id}')">비속어 사용</a>
					    <a class="dropdown-item" href="javascript:report(3, 5, -1, -1, ${map.a_number}, '${map.m_id}', '${loginInfo.m_id}')">분쟁 조장</a>
					    <a class="dropdown-item" href="javascript:report(4, 5, -1, -1, ${map.a_number}, '${map.m_id}', '${loginInfo.m_id}')">선정적</a>
					    <a class="dropdown-item" href="javascript:report(5, 5, -1, -1, ${map.a_number}, '${map.m_id}', '${loginInfo.m_id}')">사기 · 도박</a>
					  </div>
					</div>
				</c:if>
			</div>
		</div>
	</div>


	<%@ include file="../include/footer.jsp"%>

	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp"%>
	<script src="${contextPath}/resources/custom_js/report_process.js"></script>

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