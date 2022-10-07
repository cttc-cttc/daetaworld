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
	
	.content-style{
		color: red; 
		text-align: right;"
	}
	
	.content-style-1{
		color: green; 
		text-align: right;"
	}
		
	
	#intro_small{
		color: lightgrey;	
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
										<h1>자기소개서 관리 &nbsp;<small id="intro_small">자기소개서를 등록하고 공고에 지원하세요!</small></h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
											
												
												<ul class="nav">
													<li><a class="active" href="${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}">등록된 자기소개서 목록 </a></li>
													
													<c:choose>
														<c:when test="${result== 9}">
															<li><a id="cntCheck" onclick="regist_x()">자기소개서 작성 </a></li>
														</c:when>
														<c:otherwise>
															<li><a id="cntCheck" href="${contextPath}/employeeMapper/resumeRegister?m_id=${loginInfo.m_id}">자기소개서 작성 </a></li>
														</c:otherwise>
													</c:choose>
														
												</ul>
											</div>
											<div class="candidate-main-content">
												<div class="field-description"></div>
												<hr>
												<c:forEach var="resume" items="${list}" varStatus="status">
												<c:if test="${resume.i_default == 1}">
													<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
  														<path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z"/>
													</svg>
												</c:if><br>
												<!-- 대표 : ${resume.i_default}<br> -->
												번호 : <c:out value="${status.count}" />
												<input type="hidden" name="count" id="count" value="${status.count}">
												<input type="hidden" name="i_number" id="i_number" value="${status.index}">
												
												<div class="field-experience">
													<div class="experience-wrap">
														<div class="experience-item">
															<div class="row">
																<div class="col-lg-4 col-md-4">
																	<div class="content-left">
																		<h5 class="company-name theme-color"> 제목 : ${resume.i_title} </h5>
																		<span class="date"> 작성시간 : ${resume.i_date}</span>
																		
																	</div>
																</div>
																<div class="col-lg-8 col-md-8">
																	<div class="content-right">
																		<h5 class="position-company bottom">내용</h5><a></a>
																		<p><a href="${contextPath }/employeeMapper/selectResume?i_number=${resume.i_number}&m_id=${loginInfo.m_id}">${resume.i_contents}</a></p>
																	</div>
																	<br>
<%-- 																	<a class="content-style-1"  href="${contextPath}/employeeMapper/resumeDefault?i_number=${resume.i_number}&m_id=${loginInfo.m_id }">대표설정</a> --%>
																	<input type="button" value="대표설정" onclick="introDefault('${resume.i_number}','${loginInfo.m_id}')" />
																	<input type="button" value="삭제" onclick="deleteChk('${resume.i_number}','${loginInfo.m_id}')">
																	<input type="hidden" name="result" id="result" value="${map.re}"/>
																	

																</div>
															</div>
														</div>
													</div>
												</div>
												<hr>
												
												</c:forEach>
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
		function regist_x(){
			alert('자기소개서는 3개만 등록 가능합니다');
		}
	</script>
	
	<script type="text/javascript">
		function intro_xDel(){
			alert("대표자소서는 삭제가 불가능합니다");
		}
	</script>

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
	
	<!-- 자소서 대표설정 ajax -->
	<script type="text/javascript">
		function introDefault(i_number, m_id){
			
			var url ="${contextPath}/employeeMapper/resumeDefault";
			var paramData = {
					"i_number" : i_number,
					"m_id" : m_id
			};
			
			$.ajax({
				url : url,
				data : paramData,
				type : "POST",
				dataType : "json",
					success : function(rseult){
						alert('대표자소서로 설정했습니다!');
						window.location.reload(true);
						
					},
					error : function(result){
						alert('ajax 실패');
						
					}
			});
		}
	</script>
	
	
</body>
</html>