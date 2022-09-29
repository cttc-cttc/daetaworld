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

	.intro-title-box{
		width: 665px;
		height: 50px;		
	}
		
</style>

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
													<li><a href="resumeManagement?m_id=${loginInfo.m_id}">등록된 자기소개서 목록</a></li>
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
															
															<div id="article">
																<h3><strong>제목</strong></h3>
																<input class="intro-title-box" id="i_title" name="i_title" value="" placeholder="제목을 작성하세요">
															</div>
																<hr id="profile-hr-1">
															<div id="footer">
																<h3><strong>자기소개서</strong></h3>
																<textarea id="i_contents" name="i_contents" value="" rows="10" cols="80" style="resize: none;" placeholder="나의 강점과 특징에 대해 소개하고 어떤 사람인지 설명해 보세요."></textarea>
															</div>
															<hr>
															<input type="hidden" name="m_id" id="m_id" value="${loginInfo.m_id}"/>
															<button type="button" class="ht-btn theme-btn theme-btn-two mb-xs-20" onclick="saveChk()">저장</button>
															<button type="button" class="ht-btn theme-btn theme-btn-two mb-xs-20" onclick="location.href='${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}'">취소</button>
														
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
	
	script>

function getFocus() {

  document.getElementById("hz").focus();

}
	
	
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