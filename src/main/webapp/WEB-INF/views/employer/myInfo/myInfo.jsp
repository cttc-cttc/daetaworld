<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>내 정보</title>
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
										<h1>내 정보</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a style="color: green" class="active"
														href="myInfo">내 정보</a></li>

													<li><a href="shopManagement">내 가게</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">
																	<label class="d-block"><span>프로필 사진</span></label><img
																		src="#" alt="">
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_name">이름 <span>*</span></label><input
																				type="text" id="r_name" name="r_name"
																				value="${myInfo.m_name}" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_phone">전화번호 <span>*</span></label><input
																				type="text" id="r_phone" name="r_phone"
																				value="${myInfo.m_phone}">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_nick">닉네임<span>*</span></label>
																			<table>
																				<tr>
																					<td><input type="text" id="r_nick"
																						name="r_nick" value="${myInfo.m_nick }"
																						style="width: 315px;"></td>
																					<td><input type="button" id="r_nickChk" name="r_nickChk" onclick="r_nickCheck()"
																						style="background-color: white;" value="검사"></td>
																				</tr>
																			</table>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_email">이메일 <span>*</span></label>
																			<table>
																				<tr>
																					<td><input type="text" id="r_email"
																						name="r_email" value="${myInfo.m_email }"
																						style="width: 315px;"></td>
																					<td><input type="button" id="mail-Check-Btn"
																						style="background-color: white;" value="인증">
																						</td>
																				</tr>
																			</table>
																			<input type="text" class="form-control mail-check-input" 
																				placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
																			<span id="mail-check-warn"></span>	
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_address1">주소<span>*</span></label><input
																				type="text" id="r_address1" name="r_address1"
																				value="${myInfo.m_address1 }">
																			<input type="text" id="r_address2" name="r_address2" value="${myInfo.m_address2 }">	
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_picture">프로필 사진<span>*</span>&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;
																				현재 : ${myInfo.m_picture }</label><input
																				type="file" id="r_picture" name="r_picture" value="${myInfo.m_picture }"
																				>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_password">비밀번호<span>*</span></label><input
																				type="password" id="r_password"
																				name="r_password" value="${myInfo.m_password }">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="new_password">비밀번호 확인<span>*</span></label><input
																				type="password" id="confirm_password"
																				name="confirm_password" placeholder="동일한 비밀번호를 입력하세요.">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="r_terms1">선택약관1</label><input
																				type="checkbox" id="r_terms1" name="r_terms1"
																				checked> 
																			<label for="r_terms2">선택약관2</label><input
																				type="checkbox" id="r_terms2" name="r_terms2"
																				checked>
																			<!-- Single Input End -->
																		</div>
																	</div>
																	<input type="hidden" name="r_number" id="r_number" value="${myInfo.m_number }">
																	<input type="hidden" name="r_id" id="r_id" value="${myInfo.m_id }">
																	<input type="hidden" name="r_age" id="r_age" value="${myInfo.m_age }">
																	<input type="hidden" name="r_gender" id="r_gender" value="${myInfo.m_gender }">
																	<input type="hidden" name="r_regdate" id="r_regdate" value="${myInfo.m_regdate }">
																	<input type="hidden" name="r_warned" id="r_warned" value="${myInfo.m_warned }">
																	<input type="hidden" name="r_banned" id="r_banned" value="${myInfo.m_banned }">
																	<input type="hidden" name="r_quitted" id="r_quitted" value="${myInfo.m_quitted }">
																	<input type="hidden" name="pre_email" id="pre_email" value="${myInfo.m_email}">
																	<input type="hidden" name="pre_nick" id="pre_nick" value="${myInfo.m_nick}">
																</div>
															</div>
															<div class="row">
																<div class="col-12">
																	<div
																		class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																		<button type="button" id="myInfoUpdate" name="myInfoUpdate" onclick="infoUpdate(r_name)" 
																			class="ht-btn theme-btn theme-btn-two mb-xs-20">정보
																			수정</button>
																		<button
																			class="ht-btn theme-btn theme-btn-two transparent-btn-two">회원
																			탈퇴</button>
																	</div>
																</div>
															</div>
														</div>
													</form>
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
   let veriCheck = false;
   let nickveri = false;
	// 내 정보수정하기
	function infoUpdate(r_number, r_id, r_name, r_age, r_gender, r_regdate, r_warned, r_banned, r_quitted, pre_email, pre_nick){	
		var pre_email = $('#pre_email').val();
		var pre_nick = $('#pre_nick').val();
		
		var r_number = $('#r_number').val();
		var r_id = $('#r_id').val();
		var r_password = $('#r_password').val();
		var r_name = $('#r_name').val();
		var r_nick = $('#r_nick').val();		
		var r_age = $('#r_age').val();		
		var r_gender = $('#r_gender').val();		
		var r_phone = $('#r_phone').val();		
		var r_address1 = $('#r_address1').val();		
		var r_address2 = $('#r_address2').val();		
		var r_picture = $('#r_picture').val();		
		var r_email = $('#r_email').val();	
		var r_terms1;		
		if($("#r_terms1").is(':checked')==true){
			r_terms1 = 1;
		}else{
			r_terms1 = 0;
		}		
		var r_terms2;
		if($("#r_terms2").is(':checked')==true){
			r_terms2 = 1;
		}else{
			r_terms2 = 0;
		}
		var r_regdate = $('#r_regdate').val();	
		var r_warned = $('#r_warned').val();	
		var r_banned = $('#r_banned').val();	
		var r_quitted = $('#r_quitted').val();	
		
		var confirm_password = $('#confirm_password').val();
		
		if(r_password != confirm_password){
			alert('비밀번호가 일치하지 않습니다');	
			return;
		}else{	
			
			if(r_email == pre_email){
				veriCheck = true;
			}
			
			if(!veriCheck) {
				alert('이메일 인증이 완료되지 않았습니다.');
				return;
			}			
			
			if(r_nick == pre_nick){
				nickveri = true;				
			}
			
			if(!nickveri){
				alert('닉네임 검사가 완료되지 않았습니다.');
				return;
			}
			
			var url = "${contextPath}/employerMapper/myInfoUpdate";
			var paramData = {
				"r_number" : r_number,				
				"r_id" : r_id,	
				"r_password" : r_password,	
				"r_name" : r_name,	
				"r_nick" : r_nick,
				"r_age" : r_age,					
				"r_gender" : r_gender,					
				"r_phone" : r_phone,			
				"r_address1" : r_address1,
				"r_address2" : r_address2,
				"r_picture" : r_picture,
				"r_email" : r_email,			
				"r_terms1" : r_terms1,			
				"r_terms2" : r_terms2,			
				"r_regdate" : r_regdate,			
				"r_warned" : r_warned,			
				"r_banned" : r_banned,			
				"r_quitted" : r_quitted			
							
			}; // 수정데이터
			
			$.ajax({
				url : url,
				data : paramData,
				dataType : 'json',
				type : 'POST',
				success : function(result){
					console.log(result);
					alert('정보가 수정되었습니다.');
				},
				error : function(result){
					console.log(result);
					alert('정보 수정을 실패했습니다.');
				}
			});
		}	
	}	
	
	// 주소 검색
	window.onload = function(){
	    document.getElementById("r_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("r_address1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=r_address2]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
	// 닉네임 중복체크
	function r_nickCheck(){
		nickveri = false;
		$.ajax({
			url : "${contextPath}/account/r_nickChk",
			data : {"r_nick" : $("#r_nick").val()},
			dataType : 'json',
			type : 'POST',
			success : function(result){
				if(result == 1){
					alert('이미 등록된 닉네임입니다.');
					console.log('불가');					
				}else if(result == 0){
					alert('사용 가능한 닉네임입니다.');
					console.log('가능');
					nickveri = true;
				}else{
					alert('닉네임을 입력하세요.');
				} 
			}
		});
	}
	
	// 이메일 인증
	$('#mail-Check-Btn').click(function() {
	      const email = $('#r_email').val(); // 이메일 주소값 얻어오기!
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
	
</body>
</html>