<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>종료된 공고</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
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
										<h1>종료된 공고</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="pinchHistory?m_id=${loginInfo.m_id}">대타 내역</a></li>
													<li><a href="pinchStatus?m_id=${loginInfo.m_id}">지원 현황</a></li>
													<li><a href="requests?m_id=${loginInfo.m_id}">알바 요청 확인</a></li>
													<li><a class="active" href="pinchExpired?m_id=${loginInfo.m_id}">종료된 공고</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													완료한 공고목록 내역
													<table class="table table-striped">
														<thead>		
															<th>가게명</th>													
															<th>날짜</th>															
															<th>시간</th>
															<th>시급</th>
															<th>급구</th>
															<th></th>
														</thead>
														<c:forEach var="adsList" items="${list}">
															<tr>			
																<td>${adsList.s_name }</td>													
																<td>${adsList.a_date }</td>
																<td>${adsList.a_time }</td>
																<td>${adsList.a_wage }</td>
																<td>
																<c:set var="urgency" value="${adsList.a_urgency }"/>
																	<c:if test="${urgency == 1 }">
																		<c:out value="o"></c:out>
																	</c:if>
																	<c:if test="${urgency == 0 }">
																		<c:out value="x"></c:out>
																	</c:if>
																</td>																																
																
																<!-- 진행중인 알바가 끝났을 때 확인 -> 버튼이 '리뷰작성' 으로 바뀌고 -> 리뷰작성 -> 구인자에 대한 리뷰를 작성하는 페이지로 이동. -->
																
																
																<c:if test="${adsList.a_status != 3}">
																	<td><button id="pinchCh" onclick="pinch_Chk()">확인</button></td>
																</c:if>
																
																<c:if test="${adsList.a_status == 3}">
																	<td><button id="pinchCh" onclick="">후기입력</button></td>
																</c:if>
															</tr>
																<input type="hidden" name="m_id" id="m_id" value="${adsList.m_id}" />
																<input type="hidden" name="a_number" id="a_number" value="${adsList.a_number}" />
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
		function pinch_Chk() {
			var m_id = $("#m_id").val(); //구인자 아이디
			var a_number = $("#a_number").val();
			
			var url = "${contextPath}/employeeMapper/pinchChk";
			var paramData = {
				"m_id" : m_id,
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
						location.href="${contextPath}/employeeMapper/pinchExpired?m_id=${loginInfo.m_id}";
						alert('수고하셨습니다! 매장의 후기를 작성하세요!');
						
						 changeBtnName();
						
					},
					error : function(result){
						console.log('ajax 실패');
					}
			});
			
			
			
			
		}
	</script>
	
	
	<script type="text/javascript">
		function changeBtnName()  {
			  const btnElement = document.getElementById('pinchCh');
			  btnElement.innerText = '후기작성';
			}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>