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
								<h3 class="title">비밀번호 찾기</h3>
								<p>아래 회원정보를 입력하신 후 찾기 버튼을 클릭해 주세요<br> 
								</p>
								<ul class="list-reasons">
								<li class="name">
						<div class="colWrap">
							<label class="searchTitle" for="m_name">이름 </label>
							<input type="text" id="m_name" class="placeholder-input" placeholder="이름을 입력해주세요" name="m_name" value="" maxlength="30" />
							
						</div>
									<li class="id">
						<div class="colWrap">
								<label class="searchTitle" for="m_id">아이디</label>
							<input type="text" id="m_id" class="placeholder-input" name="m_id" placeholder="아이디를 입력해주세요" value="" maxlength="30" />
						
						</div>
					</li>
					
					
					<li class="email">
						<div class="colWrap">
									<label class="searchTitle" for="email">이메일</label>
							<input type="text" id="m_email" name="m_email" value="${myInfo.m_email }" style="width: 220px;">
						<input type="button" id="mail-Check-Btn" style="background-color: white;" value="인증">
						<input type="text" class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!"  maxlength="6">
																			<span id="mail-check-warn"></span>	
						</div>
						
					</li>
					
					
					
								</ul>
								
								<br>
							
							<div class="col-12 mb-25">
													<button type="button" class="ht-btn" onclick="findform_check()">비밀번호 찾기</button>
													<p style="margin-top: 1rem; color: red; text-align: center;">${loginFailedMsg }</p>
												</div>
							
							</div>
							
							
																
																	<input type="hidden" name="m_id" id="m_id" value="${myInfo.m_id }">
																	
																	<input type="hidden" name="m_name" id="m_name" value="${myInfo.m_name }">
																	<input type="hidden" name="pre_email" id="pre_email" value="${myInfo.m_email}">
																	<input type="hidden" name="pre_nick" id="pre_nick" value="${myInfo.m_nick}">			
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Register Section End -->
		
		<%@ include file="../include/footer.jsp" %>
	</div>
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
	
	<script type="text/javascript">
	
	// 이메일 인증
	$('#mail-Check-Btn').click(function() {
	      const email = $('#m_email').val(); // 이메일 주소값 얻어오기!
	      console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
	      const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
	      veriCheck = false;
	      $.ajax({
	         url : '${contextPath}/emailAuth',
	         data : {'email': email},
	         dataType : 'json',
	         type : 'post',
	         success: function(res){
	            alert("인증번호가 발송되었습니다.");
	            console.log(res);
	            email_auth_cd = res;
	            $('.mail-check-input').attr("disabled", false);
	         },
	         error: function(res){
	            alert("메일 발송에 실패했습니다.");
	            console.log(res);
	         }
	      }); // end ajax
	   }); // end send eamil
	   
	   // 인증번호 비교 
	   // blur -> focus가 벗어나는 경우 발생
	   $('.mail-check-input').blur(function () {
	      const inputCode = $(this).val();
	      const $resultMsg = $('#mail-check-warn');
	      
	      if(inputCode == email_auth_cd){
	         $resultMsg.html('인증번호가 일치합니다.');
	         $resultMsg.css('color','green');
	         $('#mail-Check-Btn').attr('disabled',true);
	         $('#userEmail1').attr('readonly',true);
	         $('#userEmail2').attr('readonly',true);
	         $('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
	            $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
	            $('.mail-check-input').attr("disabled", true);
	            veriCheck = true;
	      }else{
	         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
	         $resultMsg.css('color','red');
	         veriCheck = false;
	      }
	   });
	</script>
	
	</script>
	
	<script src="${contextPath}/resources/custom_js/account/find.js"></script>
	
</body>
</html>