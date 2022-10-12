<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>지원받은 공고</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<style>
th { text-align: center; }
td { text-align: center; }
</style>	
	
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
										<h1>지원받은 공고</h1>
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
													<li><a class="active" href="adsApplied?m_id=${loginInfo.m_id}">지원받은 공고</a></li>
													<li><a href="adsRequested?m_id=${loginInfo.m_id}">요청한 공고</a></li>
													<li><a href="adsExpired?m_id=${loginInfo.m_id}">만료된 공고</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<table class="table table-striped">
														<thead>		
															<th>가게명</th>													
															<th>날짜</th>															
															<th>시간</th>
															<th>시급</th>
															<th>구인 인원 / 구인된 인원</th>
															<th>급구</th>
															<th>상태</th>
															<th></th>
														</thead>
														<c:forEach var="adsList" items="${adsApplied}">
															<tr>			
																<td><a href="adsRegistered?a_number=${adsList.a_number}">${adsList.s_name }</a></td>													
																<td>${adsList.a_date }</td>
																<td>${adsList.a_time }</td>
																<td>${adsList.a_wage }</td>
																<td>${adsList.a_need } / ${adsList.a_filled }</td>
																<td>
																<c:set var="urgency" value="${adsList.a_urgency }"/>
																	<c:if test="${urgency == 1 }">
																		<c:out value="o"></c:out>
																	</c:if>
																	<c:if test="${urgency == 0 }">
																		<c:out value="x"></c:out>
																	</c:if>
																</td>																												
																<td>
																<c:set var="status" value="${adsList.a_status }"/>
																	<c:if test="${status == 0 }">
																		<c:out value="구인 중"></c:out>
																	</c:if>
																	<c:if test="${status == 1 }">
																		<c:out value="신청 중"></c:out>
																	</c:if>
																	<c:if test="${status == 2 }">
																		<c:out value="구인완료"></c:out>
																	</c:if>
																	<c:if test="${status == 3 }">
																		<c:out value="구인종료"></c:out>
																	</c:if>
																</td>
																<td>
																	<c:if test="${adsList.a_status != 2}">
																	<button class="btn btn-outline-success"
																		onclick="location.href='candidates?a_number=${adsList.a_number}'">
																		신청자 확인</button> / 
																	<button class="btn btn-outline-success"
																		onclick="adsComplete('${adsList.a_number}')"
																		>구인 종료</button>
																	</c:if>	
																	<c:if test="${adsList.a_status == 2 }">
																		<button class="btn btn-outline-success"
																		onclick="location.href='confirmedCandidates?a_number=${adsList.a_number}'"
																		>확정자 확인</button> / 
																	<button class="btn btn-outline-success"
																		onclick="reAdsRegister('${adsList.a_number}')"
																		>구인 재개</button>	
																	</c:if>
																</td>
															</tr>															
														</c:forEach>
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
	
	<script type="text/javascript">
	function adsComplete(a_number) {
		if(confirm("구인을 마치시겠습니까?") == true){		
		
		var url = "${contextPath}/employerMapper/adsComplete";
		var paramData = {			
			"a_number" : a_number 
		};
		$.ajax({
			url : url,
			data : paramData,
			type : "POST",
			dataType : "json",
				success : function(result){
					console.log('ajax 성공');
					window.location.reload(true);
					location.href="${contextPath}/employerMapper/adsApplied?m_id=${loginInfo.m_id}";
					alert('해당 공고의 구인을 종료합니다. 전 날까지 구직자가 취소할 수 있으니 참고해주세요.');					 
				},
				error : function(result){
					console.log('ajax 실패');
				}
		});
		}else{
			return false;
		}
	}
	
	function reAdsRegister(a_number) {
		if(confirm("구인공고를 다시 올리시겠습니까?") == true){		
		
		var url = "${contextPath}/employerMapper/reAdsRegister";
		var paramData = {			
			"a_number" : a_number 
		};
		$.ajax({
			url : url,
			data : paramData,
			type : "POST",
			dataType : "json",
				success : function(result){
					console.log('ajax 성공');
					window.location.reload(true);
					location.href="${contextPath}/employerMapper/adsApplied?m_id=${loginInfo.m_id}";
					alert('해당 공고의 구인을 재개합니다.');					 
				},
				error : function(result){
					console.log('ajax 실패');
				}
		});
		}else{
			return false;
		}
	}
	</script>
	
</body>
</html>