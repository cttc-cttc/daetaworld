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
										<h1>자기소개서 관리</h1>
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
															<li><a id="cntCheck" onclick="regist_x()">자기소개서 등록 </a></li>
														</c:when>
														<c:otherwise>
															<li><a id="cntCheck" href="${contextPath}/employeeMapper/resumeRegister?m_id=${loginInfo.m_id}">자기소개서 등록 </a></li>
														</c:otherwise>
													</c:choose>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<h3 id="intro_small">자기소개서를 작성하고 공고에 지원하세요!</h3>
													<table class="table table-striped">
														<thead>
															<th>대표</th>													
															<th>제목*</th>															
															<th>작성시간</th>
															<th>대표설정/삭제</th>
														</thead>
														<c:forEach var="resume" items="${list}">
															<tr>
																<td><c:if test="${resume.i_default == 1}">
																		<svg xmlns="http://www.w3.org/2000/svg" color="orange" width="30" height="30" fill="currentColor" class="bi bi-check-lg" viewBox="0 0 16 16">
					  														<path d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
																		</svg>
																	</c:if>
																</td>
																<td  type="button" style="color: green" onclick="location.href='${contextPath }/employeeMapper/selectResume?i_number=${resume.i_number}&m_id=${loginInfo.m_id}'">${resume.i_title}</td>
																<td>${resume.i_date}</td>
																<td>
																	<button class="ht-btn theme-btn theme-btn-two transparent-btn-two" value="대표설정" onclick="introDefault('${resume.i_number}','${loginInfo.m_id}')">대표설정</button>
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
	<script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
	
	<script type="text/javascript">
		function regist_x(){
			alert('자기소개서는 3개만 등록 가능합니다');
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