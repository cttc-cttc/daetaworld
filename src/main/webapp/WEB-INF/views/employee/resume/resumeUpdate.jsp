<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자기소개서 관리</title>
<%@ include file="../../include/head.jsp"%>

<style>
	table {
		border-collapse: collapse;
		text-align: center;
	}
	
	td {
		border: 1px solid black;
		padding: 10px;
		text-align: center;
	}
	
	.resume-th {
		border: 1px solid black;
		padding: 10px;
		background-color: lightgrey;
		text-align: center;
	}
	
	#content-style{
		color: red; 
		text-align: right;"
	}
</style>


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
										<h1>자기소개서 수정</h1>
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
													<li><a class="active" href="resumeRegister">자기소개서작성</a></li>
												</ul>
											</div>
											<hr>
											
											
											<div class="candidate-main-content">
												<div class="field-experience">
													<div class="experience-wrap">
														<div class="experience-item">
															<div class="row">
																<div class="col-lg-4 col-md-4">
																	<div class="content-left">
																	</div>
																</div>
																<div class="col-lg-8 col-md-8">
																	<div class="content-right">
																		<h5 class="company-name theme-color">제목
																			<input id="n_title" name="n_title" value="${resume.i_title}">
																		</h5>
																		<span class="date"> 작성시간 : ${resume.i_date}</span>
																		<h5 class="position-company bottom">내용</h5>
																			<textarea  id="n_contents" name="n_contents" rows="10" cols="100">${resume.i_contents}</textarea>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												
												
												<hr>
												<div class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
													<button class="ht-btn theme-btn theme-btn-two mb-xs-20" type="button" onclick="resumeSave()" >저장</button>
													<button class="ht-btn theme-btn theme-btn-two mb-xs-20" type="button" onclick="location.href='${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}'">취소</button>
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
		
		
		<input type="hidden" name="i_number" id="i_number" value="${resume.i_number }">
		<input type="hidden" name="i_date" id="i_date" value="${resume.i_date }">
		<input type="hidden" name="m_id" id="m_id" value="${resume.m_id }">
		
		
		
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
		function resumeSave(){
			
			var i_number = $("#i_number").val();
			var i_date = $("#i_date").val();
			var m_id = $("#m_id").val();
			
			
			var n_title = $("#n_title").val();
			var n_contents = $("#n_contents").val();
			
			
				var url = "${contextPath}/employeeMapper/resumeUpdate";
				var paramData = {
						
						"i_number" : i_number,
						"i_date" : i_date,
						"m_id" : m_id,
						"i_title" : n_title,
						"i_contents" : n_contents
						
				};
					
				$.ajax({	
					url : url,
					data : paramData,
					type : "POST",
					dataType : "json",
						success : function(result){
							console.log('저장 성공');
							alert('수정 완료');
							window.location.reload(true);
							location.href="${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}"
						},
						error : function(result){
							console.log('저장 실패')						
							alert('수정 실패');
						}
						
				});
			
		} //end of resumeSave
	
	</script>
	
	
	
	
</body>
</html>