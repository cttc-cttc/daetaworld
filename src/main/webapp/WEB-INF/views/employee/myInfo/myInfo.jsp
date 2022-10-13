<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>내 정보</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<style>
	.normal {
	    display: inline-block;
	    font-size: 14px;
	    line-height: 20px;
	    padding: 0 7px;
	    color: #fff;
	    border-radius: 3px;
        background-color: #1dae0e;
	}
	.warning {
	    display: inline-block;
	    font-size: 14px;
	    line-height: 20px;
	    padding: 0 7px;
	    color: #fff;
	    border-radius: 3px;
	    background-color: #ffa302;
	}
	.banned {
	    display: inline-block;
	    font-size: 14px;
	    line-height: 20px;
	    padding: 0 7px;
	    color: #fff;
	    border-radius: 3px;
		background-color: #ff2626;
	}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 

<style>
.file-label {
   margin-top: 30px;
   background-color: #5b975b;
   color: #fff;
   text-align: center;
   padding: 10px 0;
   width: 100%;
   border-radius: 6px;
   cursor: pointer;
   }
   
   .file {
     display: none;
   }
</style>
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
												<div class="col-lg-2">
													<a style="color: green; cursor: context-menu;" class="active">내 정보</a>
												</div>
												<div class="col-lg-10">
													<label style="margin: 0;">상태: 
														<c:choose>
															<c:when test="${myInfo.m_warned == 0 }">
																<span class="normal">정상</span>
															</c:when>
															<c:when test="${myInfo.m_warned == 3 }">
																<span class="banned">정지</span>
															</c:when>
															<c:otherwise>
																<span class="warning">경고 ${myInfo.m_warned }회</span>
															</c:otherwise>
														</c:choose>
													</label>
												</div>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form id="form" action="e_signOut" method="post" onsubmit="return signOut()" enctype="multipart/form-data">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">																					
																	<label class="d-block" for="picture">프로필 사진<span>*</span></label>																		
																	<table>
																	<tr>
																		<td style="height:200px; width:150px;">
																			<c:if test="${myInfo.m_picture == 'default'}">
																				<img src="${contextPath}/resources/images/default_profile.png">
																			</c:if>
																			<c:if test="${myInfo.m_picture != 'default'}">
																				<img src="${contextPath}/displayProfile?fileName=${myInfo.m_picture}">
																			</c:if>
																		</td>
																	</tr>																	
																	<tr>																	
																		<td class="single-input mb-25">																	
																			<label class="file-label" for="chooseFile" >사진바꾸기</label>
																			<input class="file" name="chooseFile" id="chooseFile" type="file" accept="image/png, image/jpeg, image/gif">
																		</td>																																	
																	</tr>																		
																	</table>																																																			
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_name">이름 <span>*</span></label>
																			<input type="text" id="m_name" name="m_name" value="${myInfo.m_name}" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_phone">전화번호 <span>*</span>
																			</label><input type="text" id="m_phone" name="m_phone" value="${myInfo.m_phone}">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_nick">닉네임<span>*</span></label>
																			<table>
																				<tr>
																					<td><input type="text" id="m_nick" name="m_nick" value="${myInfo.m_nick }" style="width: 315px;"></td>
																					<td><input type="button" id="m_nickChk" name="m_nickChk" onclick="m_nickCheck()" style="background-color: white;" value="검사"></td>
																				</tr>
																			</table>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_email">이메일 <span>*</span></label>
																			<table>
																				<tr>
																					<td><input type="text" id="m_email" name="m_email" value="${myInfo.m_email }" style="width: 315px;"></td>
																					<td><input type="button" id="mail-Check-Btn" style="background-color: white;" value="인증"></td>
																				</tr>
																			</table>
																			<input type="text" class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
																			<span id="mail-check-warn"></span>	
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_address1">주소<span>*</span></label>
																			<input type="text" id="m_address1" name="m_address1" value="${myInfo.m_address1 }">
																			<input type="text" id="m_address2" name="m_address2" value="${myInfo.m_address2 }">	
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25" style="margin-top: 2.8rem;">
																			<label for="m_terms1">선택약관1</label>
																			<input type="checkbox" id="m_terms1" name="m_terms1" style="width: 50px;"
																				<c:set var="terms1" value="${myInfo.m_terms1 }"/>																				
																					<c:if test="${terms1 == 1}">
																						<c:out value="checked"/>
																					</c:if>
																			><br><br>
																			<label for="m_terms2">선택약관2</label>
																			<input type="checkbox" id="m_terms2" name="m_terms2" style="width: 50px;"
																				
																				<c:set var="terms2" value="${myInfo.m_terms2 }"/>																				
																					<c:if test="${terms2 == 1}">
																						<c:out value="checked"/>
																					</c:if>
																			>
																			<!-- Single Input End -->
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_password">비밀번호<span>*</span></label>
																			<input type="password" id="m_password" name="m_password" value="${myInfo.m_password }">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="new_password">비밀번호 확인<span>*</span></label>
																			<input type="password" id="confirm_password" name="confirm_password" placeholder="동일한 비밀번호를 입력하세요.">
																		</div>
																		<!-- Single Input End -->
																	</div>
																		<input type="hidden" name="m_number" id="m_number" value="${myInfo.m_number }">
																		<input type="hidden" name="m_id" id="m_id" value="${myInfo.m_id }">
																		<input type="hidden" name="m_age" id="m_age" value="${myInfo.m_age }">
																		<input type="hidden" name="m_gender" id="m_gender" value="${myInfo.m_gender }">
																		<input type="hidden" name="m_picture" id="pre_picture" value="${myInfo.m_picture }">
																		<input type="hidden" name="m_regdate" id="m_regdate" value="${myInfo.m_regdate }">
																		<input type="hidden" name="m_warned" id="m_warned" value="${myInfo.m_warned }">
																		<input type="hidden" name="m_banned" id="m_banned" value="${myInfo.m_banned }">
																		<input type="hidden" name="m_quitted" id="m_quitted" value="${myInfo.m_quitted }">
																		<input type="hidden" name="m_type" id="m_type" value="${myInfo.m_type }">
																		<input type="hidden" name="pre_email" id="pre_email" value="${myInfo.m_email}">
																		<input type="hidden" name="pre_nick" id="pre_nick" value="${myInfo.m_nick}">																																		
																	</div>
															</div>
														</div>	
															<div class="row">
																<div class="col-12">
																	<div class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																		<button type="button" id="myInfoUpdate" name="myInfoUpdate" onclick="infoUpdate()" class="ht-btn theme-btn theme-btn-two mb-xs-20">정보수정</button> 
																		<button type="submit" class="ht-btn theme-btn theme-btn-two transparent-btn-two">회원탈퇴</button>
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
      
   let veriCheck = false; //이메일 인증 체크
   let nickveri = false; //닉네임 중복검사 체크
   
	// 내 정보수정하기
	function infoUpdate(){	
		var pre_email = $('#pre_email').val();
		var pre_nick = $('#pre_nick').val();
		var pre_picture = $('#pre_picture').val();
		
		var m_number = $('#m_number').val();
		var m_id = $('#m_id').val();
		var m_password = $('#m_password').val();
		var m_name = $('#m_name').val();
		var m_nick = $('#m_nick').val();		
		var m_age = $('#m_age').val();		
		var m_gender = $('#m_gender').val();		
		var m_phone = $('#m_phone').val();		
		var m_address1 = $('#m_address1').val();		
		var m_address2 = $('#m_address2').val();	
		var m_email = $('#m_email').val();	
		
		var m_terms1;		
		if($("#m_terms1").is(':checked')==true){
			m_terms1 = 1;
		}else{
			m_terms1 = 0;
		}		
		
		var m_terms2;
		if($("#m_terms2").is(':checked')==true){
			m_terms2 = 1;
		}else{
			m_terms2 = 0;
		}
		
		var m_regdate = $('#m_regdate').val();	
		var m_warned = $('#m_warned').val();	
		var m_banned = $('#m_banned').val();	
		var m_quitted = $('#m_quitted').val();	
		var m_type = $('#m_type').val();	
		
		var confirm_password = $('#confirm_password').val();
		
		if(m_password != confirm_password){
			alert('비밀번호가 일치하지 않습니다');	
			return;
		}else{	
			
			if(m_email == pre_email){
				veriCheck = true;
			}
			
			if(!veriCheck) {
				alert('이메일 인증이 완료되지 않았습니다.');
				return;
			}			
			
			if(m_nick == pre_nick){
				nickveri = true;				
			}
			
			if(!nickveri){
				alert('닉네임 검사가 완료되지 않았습니다.');
				return;
			}
			
			var url = "${contextPath}/employeeMapper/myInfoUpdate";
			//formData 파일 올릴때 무조건 써야함.
			var formData = new FormData();
				formData.append("m_number",  m_number);				
				formData.append("m_id", m_id);	
				formData.append("m_password", m_password);	
				formData.append("m_name", m_name);	
				formData.append("m_nick", m_nick);
				formData.append("m_age", m_age);					
				formData.append("m_gender", m_gender);					
				formData.append("m_phone", m_phone);			
				formData.append("m_address1", m_address1);
				formData.append("m_address2", m_address2);
				formData.append("m_email", m_email);			
				formData.append("m_terms1", m_terms1);			
				formData.append("m_terms2", m_terms2);			
				formData.append("m_regdate", m_regdate);			
				formData.append("m_warned", m_warned);			
				formData.append("m_banned", m_banned);			
				formData.append("m_quitted", m_quitted);			
				formData.append("m_type", m_type);		
				

				if($('#chooseFile').val() == '') { // 사진을 바꾸지 않았을 때
					formData.append("m_picture", pre_picture);
				} else { // 사진을 바꿨을 때
					var inputFile = $('input[name="chooseFile"]');
					var files = inputFile[0].files;
					var chooseFile = files[0];
					formData.append("chooseFile", chooseFile);
					formData.append("preFileName", pre_picture);
				}
				
			// 수정데이터
			$.ajax({
				url : url,
				data : formData,
				processData: false,
				contentType: false,
				type : 'POST',
				success : function(result){
					console.log(result);					
					alert('정보가 수정되었습니다.');
					window.location.reload(true);
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
	    document.getElementById("m_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("m_address1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=m_address2]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
	// 닉네임 중복체크
	function m_nickCheck(){
		nickveri = false;
		$.ajax({
			url : "${contextPath}/account/m_nickChk",
			data : {"m_nick" : $("#m_nick").val()},
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
	   
	   //회원 탈퇴
	   function signOut(){		
			if(confirm("탈퇴하시겠습니까?") == true){
			var m_password = $('#m_password').val();
			var confirm_password = $('#confirm_password').val();		
			
			if(m_password != confirm_password){
				alert('비밀번호가 일치하지 않습니다.');
				form.confirm_password.focus();
				return false;
			}else{
				alert('탈퇴되셨습니다. 다음에 또 이용해주세요.');
				return true;
			}		
			}else{
				return false;
			}
		}   
	</script>
	
	
</body>
</html>