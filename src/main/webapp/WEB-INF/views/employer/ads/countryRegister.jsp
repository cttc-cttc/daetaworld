<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>공고 등록</title>
<%@ include file="../../include/head.jsp"%>

<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%@ include file="../../include/etc.jsp" %>	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../../include/header.jsp"%>
		</header>
		<!-- 상단 메뉴 end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<%@ include file="../../include/dashBoard.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>공고 등록</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="adsRegister?m_id=${loginInfo.m_id}">공고 등록</a></li>
													<li><a class="active" href="countryRegister?m_id=${loginInfo.m_id}">농어촌 등록</a></li>
													<li><a href="checkEmployees?m_id=${loginInfo.m_id}">주변 노예 확인</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form name="cr" action="countryRegister" method="post">
														<div class="row mb-30">
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="s_name">가게 이름 <span>*</span></label> <input
																				type="text" name="s_name" id="s_name"
																				placeholder="이름을 입력하세요" />
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="s_address1">주소<span>*</span></label><input
																				type="text" id="s_address1" name="s_address1"
																				placeholder="클릭">
																			<input type="text" id="s_address2" name="s_address2"
																				placeholder="상세주소를 입력하세요">	
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<div class="single-input mb-15">
																			<label for="wage">시급 <span>*</span></label><input
																				type="text" id="a_wage" name="a_wage"
																				placeholder="최저 9,160원">
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<div class="single-input mb-15">
																			<label for="date">날짜 <span>*</span></label> <input
																				type="text" name="datefilter" id="datefilter" />
																		</div>
																	</div>
																	
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="time">시간 <span>*</span></label> <input
																				type="text" name="timefilter" id="timefilter" />
																		</div>																		
																	</div>																	
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">	
																		<div class="single-input mb-15">
																			<label for="s_intro">가게 소개 <span>*</span></label><br>
																			<textarea name="s_intro" id="s_intro" rows="3"
																				placeholder="가게 소개를 해보세요"></textarea>
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopTags">가게 태그 <span>*</span></label><br>
																			<input type="text" id="s_tag1" name ="s_tag1" placeholder="6자 이내 5개까지 등록 가능"
																				value="${shopInfo.s_tag1 }">
																			<input type="text" id="s_tag2" name ="s_tag2"
																				value="${shopInfo.s_tag2 }">
																			<input type="text" id="s_tag3" name ="s_tag3"
																				value="${shopInfo.s_tag3 }">
																			<input type="text" id="s_tag4" name ="s_tag4"
																				value="${shopInfo.s_tag4 }">
																			<input type="text" id="s_tag5" name ="s_tag5"
																				value="${shopInfo.s_tag5 }">
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopPicture">가게 사진 <span>*</span></label>
																				<div id="dropZone"
																					style="width: 365px; height: 300px; border-style: solid; border-color: black;">
																					<div id="fileDragDesc">파일을 올려주세요.</div>
																					<table id="fileListTable" width="100%" border="0px">
																						<tbody id="fileTableTbody">
																						</tbody>
																					</table>
																				</div>
																		</div>
																	</div>	
																	
																	<input type="hidden" id="m_id" name="m_id" value="${loginInfo.m_id}">
																	
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-12">
																<div
																	class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button type="submit" class="ht-btn theme-btn theme-btn-two mb-xs-20">
																		등록</button>
																	<button type="button" class="ht-btn theme-btn theme-btn-two transparent-btn-two"
																		onclick="location.href='${contextPath}/employerMapper/adsPending?m_id=${loginInfo.m_id}'">
																		등록 중인 공고 확인</button>
																</div>
															</div>
														</div>
													</form>
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
		</div>
	</div>
	<!-- Dashboard Content Section End -->
	<%@ include file="../../include/footer.jsp"%>
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


	<script
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

	<script type="text/javascript">
		$(function() {

			$('input[name="datefilter"]').daterangepicker({
				minDate: new Date(),
				autoUpdateInput : false,
				locale : {
					cancelLabel : 'Clear'
				}
			});

			$('input[name="datefilter"]').on(
					'apply.daterangepicker',
					function(ev, picker) {
						$(this).val(
								picker.startDate.format('MM/DD/YYYY') + ' - '
										+ picker.endDate.format('MM/DD/YYYY'));
					});

			$('input[name="datefilter"]').on('cancel.daterangepicker',
					function(ev, picker) {
						$(this).val('');
					});

		});
	</script>

	<script type="text/javascript">
		$(function() {
			$('input[name="timefilter"]').daterangepicker({
				timePicker : true,
				timePicker12Hour : true,
				timePickerIncrement : 10,
				timePickerSeconds : false,
				locale : {
					format : 'HH:mm'
				}
			}).on('show.daterangepicker', function(ev, picker) {
				picker.container.find(".calendar-table").hide();
			});
		})
	</script>	
	
	<script type="text/javascript">
	// 주소 검색
	window.onload = function(){
	    document.getElementById("s_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("s_address1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=s_address2]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	</script>
</body>
</html>