<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자기소개서 관리</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/custom_css/etc.css"> 
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
										<h1>선택한 자소서</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="resumeManagement?m_id=${loginInfo.m_id}">등록된 자기소개서 목록</a></li>
													<li><a href="${contextPath}/employeeMapper/resumeRegister">자기소개서 작성</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<table class="table table-striped">
														<thead>
															<c:if test="${resume.i_default == 1}">
																<th>대표</th>													
															</c:if>
															<th>제목</th>													
															<th>내용*</th>															
															<th>작성시간</th>
															<th></th>
														</thead>
															<tr>
																<c:if test="${resume.i_default == 1}">
																<td>
																		<svg xmlns="http://www.w3.org/2000/svg" color="orange" width="30" height="30" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
					  														<path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																		</svg>
																</td>
																</c:if>
																<td>${resume.i_title}</td>
																<td>${resume.i_contents}</td>
																<td>${resume.i_date}</td>
															<td>
																<button class="ht-btn theme-btn theme-btn-two transparent-btn-two" value="수정" onclick="location.href='${contextPath}/employeeMapper/resumeUpdate?i_number=${resume.i_number}&m_id=${loginInfo.m_id}'">수정</button>
																<button class="ht-btn theme-btn theme-btn-two transparent-btn-two" value="삭제" onclick="deleteChk('${resume.i_number}','${loginInfo.m_id}')">삭제</button>
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
	
	<!-- 자기소개서 삭제 ajax -->
	<script type="text/javascript">
		function deleteChk(i_number, m_id){
			
			var url = "${contextPath}/employeeMapper/resumeDelete";
			var paramData = {
				"m_id" : m_id,
				"i_number" : i_number
			};
			
			$.ajax({
				url : url,
				data : paramData,
				type : "POST",
				dataType : "json",
					success : function(result){
						if(result != 9){
							alert('삭제되었습니다.');
							window.location.reload(true);
							location.href="${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}";
						}
						else{
							alert('대표자소서는 삭제가 불가능합니다.')
							window.location.reload(true);
						}
					},
					error : function(result){
						alert('ajax실패');
						window.location.reload(true);
					}
			});
		}
	</script>
	
	
</body>
</html>