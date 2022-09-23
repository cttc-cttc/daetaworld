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
													<li><a class="active" href="adsRegister">공고 등록</a></li>
													<li><a href="countryRegister">농어촌 등록</a></li>
													<li><a href="checkEmployees">주변노예 확인</a></li>
												</ul>														
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form name="ar" action="adsRegister" method="post" onsubmit="return valChk()">
														<div class="row mb-30">
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="a_date">날짜 <span>*</span></label> 
																				<input type="text" name="a_date" id="a_date"/>
																		</div>

																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="a_time">시간 <span>*</span></label> <input
																				type="text" name="a_time" id="a_time"/>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="wage">시급 <span>*</span></label><input
																				type="text" id="a_wage" name="a_wage"
																				placeholder="시급을 입력해주세요. 최저 9160원">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="need">필요 인원 <span>*</span></label><input
																				type="text" id="a_need" name="a_need"
																				placeholder="필요 인원 수">
																		</div>
																		<!-- Single Input End -->
																	</div>

																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="s_name">가게 선택 <span>*</span></label><br>																			
																			<select id="s_name" name="s_name">
																				<c:forEach var="shop" items="${shopList}">																																										
																					<option>${shop.s_name }	</option>																																																													
																				</c:forEach>
																			</select> &nbsp; 또는
																			<input type="button" onclick="location.href='shopRegister'" value="새 가게 등록">	
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="a_urgency">급구 여부<span>*</span></label>																				
																				<input type="checkbox" name="a_urgency" value='1' id="input_check"/>
																				<input type="hidden" name="a_urgency" value='0' id="input_check_hidden"/>																			
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<input type="hidden" id="m_id" name="m_id" value="${m_id }">																																		
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


	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

	<script type="text/javascript">
		$(function() {

			$('input[name="a_date"]').daterangepicker({
				minDate: new Date(),
				autoUpdateInput : false,
				locale : {
					cancelLabel : 'Clear'
				}
			});

			$('input[name="a_date"]').on(
					'apply.daterangepicker',
					function(ev, picker) {
						$(this).val(
								picker.startDate.format('MM/DD/YYYY') + ' - '
										+ picker.endDate.format('MM/DD/YYYY'));
					});

			$('input[name="a_date"]').on('cancel.daterangepicker',
					function(ev, picker) {
						$(this).val('');
					});

		});
	</script>

	<script type="text/javascript">
		$(function() {
			$('input[name="a_time"]').daterangepicker({
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
		if(document.getElementById("input_check").checked) {
		    document.getElementById("input_check_hidden").disabled = true;
		}
	</script>	
	
	<script type="text/javascript">
		function valChk(){
			if(!checkDate(ar.a_date.value)){
				return false;
			}else if(!checkTime(ar.a_time.value)){
				return false;
			}else if(!checkWage(ar.a_wage.value)){
				return false;
			}else if(!checkNeed(ar.a_need.value)){
				return false;
			}
			alert("공고가 등록되었습니다");
			return true;
		}
		
		function checkExist(value, dataName) {        
			if (value == "" || value == " ") {            
				alert(dataName + " 입력해주세요");            
				return false;        
			}        
			return true;    
		}
	
		function checkDate(a_date){
			if(!checkExist(a_date, "날짜를")){
				ar.a_date.focus();
				return false;
			}else {
				return true;
			}
		}
		
		function checkTime(a_time){
			if(!checkExist(a_time, "시간을")){
				ar.a_time.focus();
				return false;
			}else {
				return true;				
			}
		}
		
		function checkWage(a_wage){
			if(!checkExist(a_wage, "시급을")){
				ar.a_wage.focus();
				return false;
			}
			
			var wageReg = /^[0-9]{4,6}$/;
			if (!wageReg.test(a_wage)) {            
				alert("시급은 숫자로만 써주세요");            
				ar.a_wage.value = "";            
				ar.a_wage.focus();            
				return false;        
			}
			
			if(a_wage < 9160){
				alert("최저 시급은 9160원입니다. 그 이상을 적어주세요")
				ar.a_wage.focus();
				return false;
			}
			return true;			
		}
		
		function checkNeed(a_need){
			if(!checkExist(a_need, "필요 인원을")){
				ar.a_need.focus();
				return false;
			}
			
			var needReg = /^[0-9]$/;
			if (!needReg.test(a_need)) {            
				alert("필요 인원은 숫자로만 써주세요");            
				ar.a_need.value = "";            
				ar.a_need.focus();            
				return false;        
			}
			
			return true;
		}
		
	</script>

</body>
</html>