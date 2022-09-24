<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>공고 세부정보</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />		
<link rel="stylesheet"
	href="${contextPath }/resources/custom_css/etc.css">
	
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
										<h1>${detail.s_name }</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="adsHistory?m_id=${loginInfo.m_id}">공고 내역</a></li>
													<li><a href="adsPending?m_id=${loginInfo.m_id}">등록 중인 공고</a></li>
													<li><a class="active" href="adsApplied?m_id=${loginInfo.m_id}">지원자 확인</a></li>
													<li><a href="adsExpired?m_id=${loginInfo.m_id}">만료된 공고</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">																					
																	<label class="d-block" for="m_picture">지원자 면상<span>*</span></label>
																	<img																	
																		src="${contextPath}/resources/images/${detail.m_picture}">																																																			
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_name">이름 <span>*</span></label>																			
																				<input type="text" id="m_name" name="m_name"
																						value="${detail.m_name }" readonly="readonly"> 
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_age">나이<span>*</span></label>
																				<input type="text" id="m_age" name="m_age" 
																					value="${detail.m_age }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_gender">성별<span>*</span></label>
																				<input type="text" id="m_gender" name="m_gender" 
																					value="${detail.m_gender }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_address1">거주지<span>*</span></label>
																				<input type="text" id="m_address1" name="m_address1" 
																					value="${detail.m_address1 }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_intro">자기소개서<span>*</span></label>
																			<table>
																			<tr>
																				<td><input type="text" id="i_title" name="i_title" 
																					value="${detail.i_title }" readonly="readonly"
																					style="width: 315px;"></td>
																				<td>
																					<input type="button" id="modal_btn" value="보기">
																					<div class="black_bg"></div>
																					<div class="modal_wrap">																							    
																						<div class="modal_close">
																							<a href="#">close</a></div>																							    
																					<div>${detail.i_contents }</div>
																					</div>
																				</td>																																										
																			</tr>																			
																			</table>
																																					
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="w_rate">평가<span>*</span></label>
																				<input type="text" id="w_rate" name="w_rate" 
																					value="평점을 갖고올거임" readonly="readonly">																					
																		</div>
																		<!-- Single Input End -->
																	</div>																	
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="ja_status">수락 여부<span>*</span></label>
																				<div>																																							
																				<c:set var="stChk" value="${detail.jar_status }"/>
																					<c:if test="${stChk == 0 }">
																						<c:out value="신청 중"></c:out>
																					</c:if>
																					<c:if test="${stChk == 1 }">
																						<c:out value="수락됨"></c:out>
																					</c:if>
																					<c:if test="${stChk == 2 }">
																						<c:out value="거절됨"></c:out>
																					</c:if>																					
																			</div>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="ja_status">결정 여부<span>*</span></label>
																				<div>																																							
																				<c:set var="stChk" value="${detail.jae_status }"/>
																					<c:if test="${stChk == 0 }">
																						<c:out value="결정 전"></c:out>
																					</c:if>
																					<c:if test="${stChk == 1 }">
																						<c:out value="신청 중"></c:out>
																					</c:if>
																					<c:if test="${stChk == 2 }">
																						<c:out value="수락됨"></c:out>
																					</c:if>	
																					<c:if test="${stChk == 3 }">
																						<c:out value="거절됨"></c:out>
																					</c:if>																				
																			</div>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<input type="hidden" name="m_id" id="m_id" value="${detail.m_id}">
																	<input type="hidden" name="jar_status" id="jar_status" value="${detail.jar_status}">
																	<input type="hidden" name="jae_status" id="jae_status" value="${detail.jae_status}">
																																		
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-12">
																<div
																	class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button type="button" id="applyAccept" name="applyAccept" onclick="accept()"
																		class="ht-btn theme-btn theme-btn-two mb-xs-20">
																	수락
																	</button>																
																	<button type="button" id="applyDeny" name="applyDeny" onclick="deny()"
																		class="ht-btn theme-btn theme-btn-two mb-xs-20">
																	거절
																	</button>	
																	<button type="button" onclick="location.href='candidates?a_number=${a_number}'"
																		class="ht-btn theme-btn theme-btn-two transparent-btn-two">지원자 목록으로</button>
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
		<!-- Dashboard Content Section End -->
		<%@ include file="../../include/footer.jsp"%>
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
	
		<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

	<script type="text/javascript">
		$(function() {

			$('input[name="datefilter"]').daterangepicker({
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
		window.onload = function() {
			function onClick() {
				document.querySelector('.modal_wrap').style.display = 'block';
				document.querySelector('.black_bg').style.display = 'block';
			}
			function offClick() {
				document.querySelector('.modal_wrap').style.display = 'none';
				document.querySelector('.black_bg').style.display = 'none';
			}
			document.getElementById('modal_btn').addEventListener('click',
					onClick);
			document.querySelector('.modal_close').addEventListener('click',
					offClick);
		};
	</script>
	
	<script type="text/javascript">
		function accept(){
			
			var jar_status = $('#jar_status').val();
			if(jar_status == 1){
				alert('이미 수락하셨습니다');
				return;
			}else{
			
				$.ajax({
					url : "${contextPath}/employerMapper/applyAccept",
					data : {
						"m_id" : $("#m_id").val()					
						},
					dataType : 'json',
					type : 'POST',
					success : function(result){
						console.log(result);					
						alert('수락하였습니다. 노예의 결정을 기다리세요');	
						window.location.reload(true);
					},
					error : function(result){
						console.log(result);
						alert('수락을 실패했네요 ㅋ');
					}				
				});				
			}
		}
		
		function deny(){
			var jae_status = $('#jae_status').val();
			if(jae_status == 3){
				alert('이미 거절하셨습니다. 근데 또 한다고?');
				return;
			}else{
				
				$.ajax({
					url : "${contextPath}/employerMapper/applyDeny",
					data : {
						"m_id" : $("#m_id").val()					
						},
					dataType : 'json',
					type : 'POST',
					success : function(result){
						console.log(result);					
						alert('거절하였습니다. 야멸차시네.....');
						window.location.reload(true);
					},
					error : function(result){
						console.log(result);
						alert('거절을 거절한다');
					}				
				});				
			}
		}
	</script>
</body>
</html>