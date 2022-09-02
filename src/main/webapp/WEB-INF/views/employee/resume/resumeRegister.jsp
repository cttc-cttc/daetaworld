<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자기소개서 등록</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<style>
	#header{
	}
	
	#article{
	}
	
	#footer{
	}
	
	#profile-hr-1{
		height : 2px;
		background-color: black;
	}
	
	#header-small-text{
		color: lightgrey;
		font-size: 13px;
	}
	
	#newcomer{
		text-align: center;
	}
	
	#career{
		text-align: center;
	}
	
	#regi{
		size : 1024;
		height : 500px;
		width: 500px;
		
	}
</style>

<script type="text/javascript">
	function newcomer() {
		
	}
	
	function career() {
		alert("경력직이니?")		
	}

	document.)
</script>


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
													<li><a href="resumeManagement">등록된 자기소개서 목록</a></li>
													<li><a class="active" href="resumeRegister">자기소개서 등록</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<!-- 기본정보 -->
													<div id="section">
														<div id="header">
															<span><h3><strong>기본정보</strong><small id="header-small-text">개인정보는 공개 설정 여부와 관계없이 지원한 공고에 모두 공개됩니다.</small></h3></span>
														</div>
															<hr id="profile-hr-1">
														<form>
														<div id="article">
															<h3><strong>경력</strong></h3>
																<input id="newcomer" type="text" size="10px;" readonly="readonly" placeholder="신입" onclick="newcomer()"/>
															&nbsp;&nbsp;
																<input id="career"  type="text" size="10px;" readonly="readonly" placeholder="경력" onclick="career()"/>
														</div>
															<hr id="profile-hr-1">
														<div id="footer">
															<h3><strong>자기소개서</strong></h3>
															<input id="regi" type="text"/>
														</div>
														<hr>
														<button>저장</button>
														<button>취소</button>
													</form>
															<hr id="profile-hr-1">
													</div>
													
													<!-- 기본정보 End -->
													<hr>
													
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
</body>
</html>