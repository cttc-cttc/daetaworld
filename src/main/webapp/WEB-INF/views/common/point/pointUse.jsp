<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>포인트 사용</title>
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
										<h1>포인트 사용</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="pointManagement?m_id=${loginInfo.m_id}">포인트</a></li>
													<li><a href="pointEarned?m_id=${loginInfo.m_id}">포인트 적립 내역</a></li>
													<li><a href="pointDeducted?m_id=${loginInfo.m_id}">포인트 차감 내역</a></li>												
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="pointDeduct" method="post" onsubmit="return validate()">
														<div class="row mb-30">
															<div class="col-lg-10">
																<h3>현재 보유하고 계신 포인트는 ${point.point}점 입니다.</h3>
																	<div>
																		인출하실 포인트를 입력하세요 : 
																		<input type="text" id="point" name="point">
																	</div>
																	<input type="hidden" id="id" name="id" value="${point.m_id }">
																	<input type="hidden" id="pre_point" name="pre_point" value="${point.point }">
															</div>
															<div class="col-12">	
															<button type="button" id="pointDeduct" name="pointDeduct" class="btn btn-outline-primary"
																onclick="deductCheck()">인출하기</button>
															</div>
														</div>
													</form>												
												</div>
												<div class="row">
													<div class="col-12">
														<div
															class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
															<button type="button" id="pointUse" name="pointUse"
																onclick="location.href='${contextPath}/pointMapper/pointManagement?m_id=${loginInfo.m_id}'"
																class="ht-btn theme-btn theme-btn-two mb-xs-20">포인트 화면으로</button>
															<button
																class="ht-btn theme-btn theme-btn-two transparent-btn-two"
																onclick="location.href='${contextPath}'">메인으로</button>
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
	
	function deductCheck(){	
		
		var id = $("#id").val();
		var point = $("#point").val();
		var pre_point = $("#pre_point").val();
		
		if (point > pre_point){
			alert('인출 금액이 보유 금액보다 많습니다');
			return;
		} else if(point == ""){
			alert('인출하실 금액을 적어주세요');
			return;
		} else if(pre_point < 10000){
			alert('인출은 보유 포인트가 10000포인트 이상부터 가능합니다.');
			return;
		}else if(point < 10000){
			alert('인출은 10000포인트 이상부터 가능합니다.');
			return;
		}else{
			var url = "${contextPath}/pointMapper/pointDeduct";
			var paramData = {
				"id" : id,
				"point" : point
			};
			
			$.ajax({
				url : url,
				data : paramData,
				dataType : 'json',
				type : 'POST',
				success : function(result){
					console.log(result);					
					alert('인출이 완료되었습니다');
					window.location.reload(true);					
				},
				error : function(result){
					console.log(result);
					alert('인출을 실패하였습니다.');
				}
			});
			
		}
		
	}
	
	</script>
	
</body>
</html>