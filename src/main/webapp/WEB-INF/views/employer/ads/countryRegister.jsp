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
<script type="module" src="${contextPath}/resources/assets/js/tag_create.js"></script>
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
													<li><a href="adsRegister">공고 등록</a></li>
													<li><a class="active" href="countryRegister">농어촌 등록</a></li>
													<li><a href="checkEmployees">주변 노예 확인</a></li>
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
																			<label for="wage">시급 <span>*</span></label><input
																				type="text" id="a_wage" name="a_wage"
																				placeholder="최저 9,160원">
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
																		<div class="single-input mb-15">
																			<label for="shopTags">가게 태그 <span>*</span></label><br>
																			<input type="text" placeholder="간단한 태그 입력 (6자 이내, 5개까지 가능)" />
																			<ul id="tag-list"></ul>
																		</div>
																	</div>
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
																		onclick="location.href='${contextPath}/employerMapper/adsPending'">등록 중인 공고 확인</button>
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
	
	<script type="text/javascript">
	$(document).ready(function() {
		var tag = {};
		var counter = 0;

		// 태그를 추가한다.
		function addTag(value) {
			tag[counter] = value; // 태그를 Object 안에 추가
			counter++; // counter 증가 삭제를 위한 del-btn 의 고유 id 가 된다.
		}
		
		// 최종적으로 서버에 넘길때 tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
		function marginTag() {
			return Object.values(tag).filter(function(word) {
			return word !== "";
			});
		}

			$("#tag").on(
				"keyup",
				function(e) {
					var self = $(this);
					console.log("keypress");
					
					// input 에 focus 되있을 때 엔터 및 스페이스바 입력시 구동
					if (e.key === "Enter" || e.keyCode == 32) {
	 					var tagValue = self.val(); // 값 가져오기
	 					
						// 값이 없으면 동작 안합니다.
						if (tagValue !== "") {
							// 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
							var result = Object.values(tag).filter(
									function(word) {
										return word === tagValue;
									})
							// 태그 중복 검사
							if (result.length == 0) {
								$("#tag-list").append(
										"<li class='tag-item'>"+ tagValue + 
										"<span class='del-btn' idx='" + counter + "'>x</span></li>");
								addTag(tagValue);
								self.val("");
							} else {
								alert("태그값이 중복됩니다.");
							}
						}	 						
							e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
					}
				}); 	
		// 삭제 버튼
		// 삭제 버튼은 비동기적 생성이므로 document 최초 생성시가 아닌 검색을 통해 이벤트를 구현시킨다.
		$(document).on("click", ".del-btn", function(e) {
			var index = $(this).attr("idx");
			tag[index] = "";
			$(this).parent().remove();
		});
	})
	</script>

</body>
</html>