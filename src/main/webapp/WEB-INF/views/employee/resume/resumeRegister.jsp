<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자기소개서 등록</title>
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
										<h1>자기소개서 등록</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="resumeManagement?m_id=${loginInfo.m_id}">등록된 자기소개서 목록</a></li>
													<li><a class="active" href="resumeRegister">자기소개서 등록</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<table class="table table-striped">
														<thead>
															<th><h3>제목</h3></th>
															<tr>
																<td><input type="text" id="i_title" name="i_title" style="width:900px;height:60px;font-size:20px;" placeholder="제목을 작성하세요"></td>
															</tr>
															<th><h3>내용</h3></th>	
														</thead>
																<td><textarea id="i_contents" name="i_contents" rows="10" cols="80" style="resize: none;font-size:20px;" placeholder="나의 강점과 특징에 대해 소개하고 어떤 사람인지 설명해 보세요."></textarea></td>
													
													</table>
													<div class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
														<input type="hidden" name="m_id" id="m_id" value="${loginInfo.m_id}"/>
														<button type="button" class="ht-btn theme-btn theme-btn-two mb-xs-20" onclick="saveChk()">저장</button>
														<button type="button" class="ht-btn theme-btn theme-btn-two mb-xs-20" onclick="location.href='${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}'">취소</button>
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
	
	
	<!-- 자기소개서 작성 유효성 검사 -->
	<script type="text/javascript">
		function saveChk() {
			var i_title_Chk = $("#i_title").val();
			var i_contents_Chk = $("#i_contents").val();
			var m_id = $("#m_id").val();
			
			
			if(i_title_Chk == ''){
				alert('제목을 입력하세요');
				return;
			}else if(i_contents_Chk == ''){
				alert('내용을 입력하세요');
				return;
			}else{
				
				var url = "${contextPath}/employeeMapper/resumeRegister";
				var paramData = {
						"i_title" : i_title_Chk,
						"i_contents" : i_contents_Chk,
						"m_id" : m_id
				};
				
				$.ajax({
					url : url, 
					data : paramData,
					type : "POST",
					dataType : "json",
						success : function(result){
							console.log('등록 성공');
							alert('등록되었습니다');
							window.location.reload(true);
							location.href="${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}";
						}, 
						error : function(result){
							console.log('등록 실패');
							alert('등록 실패');
							
						}
					
				}); //end of ajax
				
			}//end of else
			
	}//end of function
	
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>