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
					<h3>구직자 알바요청 받았을때 수락/거절 선택하는 페이지입니다.</h3>
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
							<h2 class="sidebar-title">가게 위치</h2>
							<div class="sidebar-map">
								<!-- 카카오 지도 -->
								<div id="map" style="width:500px;height:400px;"></div>
								
							</div>
						</div>
					</div>
				</div>
				<div
					class="col-lg-8 order-lg-1 order-1 pr-55 pr-md-15 pr-sm-15 pr-xs-15">
					<div class="employer-main-content">
						<div class="field-description">

							
							<p>${map.s_intro } </p>
							
							<ul class="info">
								<li><img src="${contextPath }/displayShop?fileName=${map.s_picture1 }" style="width:50%; height:20%"></li>
								<li>가게주소: ${map.s_address1}</li>
								<li>
									<span class="info-tag">${map.s_tag1 }</span>
									<span class="info-tag">${map.s_tag2 }</span>
									<span class="info-tag">${map.s_tag3 }</span>
									<span class="info-tag">${map.s_tag4 }</span>
									<span class="info-tag">${map.s_tag5 }</span>
								</li>
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
									
									<input type="hidden" name="m_id_c" id="m_id_c" value="${loginInfo.m_id}" />
									<input type="hidden" name="a_number_c" id="a_number_c" value="${map.a_number}" />
									
									
									<!-- 수락 / 거절 버튼 -->
									<table>
										<tr>
											<td>														
												<a class="ht-btn text-center apply-btn" type="button" onclick="requestChk_y()">수락<i class="ml-10 mr-0 fa fa-paper-plane"></i></a>
											</td>
											<td>
												<a class="ht-btn text-center apply-btn" type="button" onclick="requestChk_n()">거절<i class="ml-10 mr-0 fa fa-paper-plane"></i></a>
											</td>
										</tr>
									</table>

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

	

	<%@ include file="../include/footer.jsp"%>

	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6140eb0f3d4e274049880e659b9d48b&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    level: 3 // 지도의 확대 레벨
		};  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${map.s_address1}', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div id="s-name" style="text-align:center; padding:0 1rem;">'+ '${map.s_name}' +'</div>'
		        });
		        infowindow.open(map, marker);
				$('#s-name').parent().css('width','100%');
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});
	</script>
	
	
	<!-- 요청받은 공고 수락 눌렀을때 START -->
	<script type="text/javascript">
	function requestChk_y() {
		var m_id_c = $("#m_id_c").val();
		var a_number_c = $("#a_number_c").val();
		
		var url = "${contextPath}/employeeMapper/requestYes";
		var paramData = {
				"m_id" : m_id_c,
				"a_number" : a_number_c,
				"owner_id" : '${map.owner_id}'
		};
		$.ajax({
			url : url,
			data : paramData,
			dataType : "json",
			type : "POST",
			success : function(result){
				console.log('지원성공');
				alert('지원하셨습니다.');
				window.location.reload(true);
				location.href="${contextPath}/employeeMapper/pinchHistory?m_id=${loginInfo.m_id}"
			},
			error : function(result){
				console.log('지원실패')
				alert('실패');
			}
		});
	}
		</script>
	<!-- 요청받은 공고 수락 눌렀을때 END -->
	
	
	<!-- 요청받은 공고 거절 눌렀을때 START -->
	<script type="text/javascript">
	function requestChk_n() {
		var m_id_c = $("#m_id_c").val();
		var a_number_c = $("#a_number_c").val();
		
		var url = "${contextPath}/employeeMapper/requestNo";
		var paramData = {
				"m_id" : m_id_c,
				"a_number" : a_number_c,
				"owner_id" : '${map.owner_id}'
		};
		$.ajax({
			url : url,
			data : paramData,
			dataType : "json",
			type : "POST",
			success : function(result){
				console.log('거절성공');
				alert('구인요청을 거절하셨습니다');
				window.location.reload(true);
				location.href="${contextPath}/employeeMapper/pinchHistory?m_id=${loginInfo.m_id}"
			},
			error : function(result){
				console.log('지원실패')
				alert('실패');
			}
		}); 		
		
	}	
	
	
	</script>	
	<!-- 요청받은 공고 거절 눌렀을때 END -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>