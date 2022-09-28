<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
<body class="template-color-3" onkeydown="onEnterLogin()">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
			
			
			
		</header>
		

		
		
		
		
		<!-- 상단 여백 Section Start -->
		<div class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb"></ul>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 상단 여백 Section end -->
		
		<!-- Login Register Section Start -->
		<div class="login-register-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-4">
						<div class="login-register-form-area">
							<div class="login-tab-menu">
								<ul class="nav">
									<li><a class="active show" style="cursor: context-menu;">통합 로그인</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="login" class="tab-pane fade show active">
									<div class="login-register-form">
										<form method="post">
											<p>오늘의 대타에 로그인하세요</p>
											<div class="row">
												<div class="col-12">
													<div class="single-input">
														<input type="text" placeholder="아이디" name="inputId" id="inputId">
													</div>
												</div>
												<div class="col-12">
													<div class="single-input">
														<input type="password" placeholder="비밀번호" name="inputPassword" id="inputPassword">
													</div>
												</div>
												<div class="col-12">
													<div class="checkbox-input">
														<input type="checkbox" name="login-form-remember" id="login-form-remember">
														<label for="login-form-remember">아이디 저장하기</label>
													</div>
													
													
													<a href="${contextPath}/findId">아이디 찾기 </a>
													<a href="${contextPath}/findPw">비밀번호 찾기</a>
													
												</div>
												<div class="col-12 mb-25">
													<button type="button" class="ht-btn" onclick="validate()">로그인</button>
													<p style="margin-top: 1rem; color: red; text-align: center;">${loginFailedMsg }</p>
												</div>
											</div>
										</form>
										<div class="divider">
											<span class="line"></span><span class="circle">간편 로그인</span>
										</div>
										<div class="social-login">
											<ul class="social-icon">
												<li><a class="facebook" href="#"><i class="fab fa-facebook"></i></a></li>
												<li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
												<li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
												<li><a class="google" href="#"><i class="fab fa-google-plus"></i></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="login-instruction">
							<div class="login-instruction-content">
								<h3 class="title">아이디 찾기</h3>
								<p>아래 회원정보를 입력하신 후 찾기 버튼을 클릭해 주세요<br> 
								</p>
								<ul class="list-reasons">
								<li class="name">
						<div class="colWrap">
							<label class="searchTitle" for="m_name">이름</label>
							<input type="text" id="m_name" class="placeholder-input" placeholder="이름을 입력해주세요" name="m_name" value="" maxlength="30" />
							
						</div>
									<li class="id">
						<div class="colWrap">
								<label class="searchTitle" for="m_email">이메일</label>
							<input type="text" id="m_email" class="placeholder-input" name="m_email" placeholder="이메일을 입력해주세요" value="" maxlength="30" />
						
						</div>
					</li>
					
								</ul>
								<br><br><br>
							
							<div class="col-12 mb-25">
													<button type="button" id='find_id' name='find_id' class="ht-btn" onclick="findId_click()">아이디 찾기</button>
													<p style="margin-top: 1rem; color: red; text-align: center;">${loginFailedMsg }</p>
												</div>
							
							<%@ include file="./findModal.jsp" %>
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Register Section End -->
		
		
		
		
		
		<%@ include file="../include/footer.jsp" %>
	</div>
	
	
	
	 <script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	
	
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
	<script>
		function onEnterLogin() {
			var keyCode = window.event.keyCode;
			if (keyCode == 13) // 엔터키
				validate();
		}
		
		function validate() {
			$('form').submit();
		}
	</script>
	
	<script>
/* 아이디 찾기 */ 
//아이디 & 스토어 값 저장하기 위한 변수
	// 아이디 값 받고 출력하는 ajax
	function findId_click(){
		var m_name=$('#m_name').val()
		var m_email=$('#m_email').val()
		
		$.ajax({
			url:"${contextPath}/account/find_id",
			type:"POST",
			data:{"m_name":m_name, "m_email":m_email} ,
			success:function(data){
				if(data == 0){
					$('#id_value').text("회원 정보를 확인해주세요!");
					$('#m_name').val('');
					$('#m_email').val('');
				} else {
					$('#id_value').text(data);
					$('#m_name').val('');
					$('#m_email').val('');
					
				}
			},
			 error:function(){
	                alert("에러입니다");
	            }
		});
	};

const modal = document.getElementById("modal")
const btnModal = document.getElementById("find_id")

btnModal.addEventListener("click", e => {
    modal.style.display = "flex"
})

    
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
})

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modal.style.display = "none"
    }
})


</script>
	
</body>
</html>