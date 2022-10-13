<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<!-- 툴팁 link -->
<link type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
<title>완료된 공고</title>

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
										<h1>완료된 공고</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="${contextPath}/employeeMapper/pinchHistory?m_id=${loginInfo.m_id}">대타 내역</a></li>
													<li><a class="active" href="${contextPath}/employeeMapper/pinchExpired?m_id=${loginInfo.m_id}">완료된 공고</a></li>
													<li><a href="${contextPath}/reviewMapper/e_wroteReviews?m_id=${loginInfo.m_id}">내가 작성한 후기</a></li>
													<li><a href="${contextPath}/reviewMapper/e_writtenReviews?m_id=${loginInfo.m_id}">나를 평가한 후기</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<table class="table table-striped">
														<thead>		
															<th>가게이름</th>													
															<th>날짜</th>															
															<th>시간</th>
															<th>시급</th>
															<th>급구</th>
															<th></th>
														</thead>
														
														<c:forEach var="adsList" items="${list}">
															<tr>			
																<td><a href="#"></a>${adsList.s_name }</td>													
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
																<td></td>																																
																
																<!-- 진행중인 알바가 끝났을 때 확인 -> 버튼이 '리뷰작성' 으로 바뀌고 -> 리뷰작성 -> 구인자에 대한 리뷰를 작성하는 페이지로 이동. -->
																<c:if test="${adsList.a_status != 3}">
																	<td><button class="btn btn-outline-danger" id="pinch" onclick="pinch_Chk('${adsList.a_number}')">확인</button></td>
																</c:if>
																
																<c:if test="${adsList.a_status == 3 && adsList.jae_status != 7 }">
																	<td>
																	<button class="btn btn-outline-danger" id="pinch" title="소중한 후기작성시 500포인트 적립!"  onclick="location.href='${contextPath}/reviewMapper/e_reviewRegister?m_id=${loginInfo.m_id}&a_number=${adsList.a_number}&id_rated=${adsList.id_rated}&s_name=${adsList.s_name }'">
																	후기입력
																	</button>
																	</td>
																</c:if>
																
																<c:if test="${adsList.jae_status == 7}">
																	
																</c:if>
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
	<script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
	<!-- 툴팁 스크립트  -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
	
	<script type="text/javascript">
		function pinch_Chk(a_number) {
			if(confirm("급여가 정상적으로 입금됐는지 확인 후 버튼을 눌러주세요!") == true){//confirm 취소
			
			var url = "${contextPath}/employeeMapper/pinchChk";
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
						location.href="${contextPath}/employeeMapper/pinchExpired?m_id=${loginInfo.m_id}";
						alert('수고하셨습니다! 매장의 후기를 작성하세요! 후기 작성시 500포인트 증정!');
						 changeBtnName();
					},
					error : function(result){
						console.log('ajax 실패');
					}
			});
			}else{//confirm 취소
				return false;
			}
		}
	</script>
	
	<script type="text/javascript">
		function changeBtnName()  {
			  const btnElement = document.getElementById('pinch');
			  btnElement.innerText = '후기작성';
			}
	</script>

	<!-- 툴팁 함수 이용 마우스 올렸을시 말풍선 -->
	<script type="text/javascript">
	$(function(){
		$(document).tooltip();
	})
	</script>






















</body>
</html>