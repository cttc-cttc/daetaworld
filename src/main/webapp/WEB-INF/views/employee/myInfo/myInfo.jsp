<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>내 정보</title>
<%@ include file="../../include/head.jsp"%>

<style>
	#photoarea{
		border: 1px solid black;
		height : 200px;
		width: 150px;
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
										<h1>내 정보</h1>
									</div>
								</div>
							</div>
							<div class="profile-applications-main-block">
										<div class="profile-applications-form">
											<form method="post" name="updateForm">
												<div class="row mb-30">
														
													<div class="col-lg-2">

														<div class="profile-avatar mb-30">																					
															<label class="d-block" for="m_picture">프로필 사진<span>*</span></label>																		
															<table>
															<tr>
															<td>
															<img  
																style="height:200px; width:150px;"
																src="${contextPath}/resources/images/${myInfo.m_picture}"></td>
															<td>
															</tr>																	
															<tr>																	
															<td class="single-input mb-25">																	
															<label class="file-label" for="chooseFile" >사진바꾸기</label>
																<input class="file" id="chooseFile" name="chooseFile"
																  type="file" onchange="changeValue(this)" id="file_01"
																  accept="image/png, image/jpeg, image/gif"
																  >
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
																	<label for="m_name">이름 <span>*</span></label><input
																		type="text" id="m_name" name="m_name"
																		value="${myInfo.m_name}" readonly="readonly">
																</div>
																<!-- Single Input End -->
															</div>
															<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																<!-- Single Input Start -->
																<div class="single-input mb-25">
																	<label for="m_phone">전화번호 <span>*</span></label><input
																		type="text" id="m_phone" name="m_phone"
																		value="${myInfo.m_phone}">
																</div>
																<!-- Single Input End -->
															</div>
															<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																<!-- Single Input Start -->
																<div class="single-input mb-25">
																	<label for="m_nick">닉네임<span>*</span></label>
																	<table>
																		<tr>
																			<td><input type="text" id="m_nick"
																				name="m_nick" value="${myInfo.m_nick }"
																				style="width: 315px;"></td>
																			<td><input type="button" id="m_nickChk" name="m_nickChk" onclick="m_nickCheck()"
																				style="background-color: white;" value="검사"></td>
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
																			<td><input type="text" id="m_email"
																				name="m_email" value="${myInfo.m_email }"
																				style="width: 315px;"></td>
																			<td><input type="button" id="mail-Check-Btn" style="background-color: white;" value="인증"></td>
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
																	<label for="m_address1">주소<span>*</span></label>
																	<input type="text" id="m_address1" name="m_address1" value="${myInfo.m_address1 }">
																	<input type="text" id="m_address2" name="m_address2" value="${myInfo.m_address2 }">	
																</div>
																<!-- Single Input End -->
															</div>
															<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																<!-- Single Input Start -->
																<div class="single-input mb-25">
																	<label for="m_terms1">선택약관1</label><input
																		type="checkbox" id="m_terms1" name="m_terms1"
																		checked>																			
																	<label for="m_terms2">선택약관2</label><input
																		type="checkbox" id="m_terms2" name="m_terms2"
																		checked>	
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
																	<label for="confirm_password">비밀번호 확인<span>*</span></label>
																	<input type="password" id="confirm_password" name="confirm_password" placeholder="동일한 비밀번호를 입력하세요.">
																</div>
																<!-- Single Input End -->
															</div>
														</div>
													</div>
												</div>	
													<div class="row">
														<div class="col-12">
															<div
																class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																<!-- <button type="button" onclick="infoUpdate()" class="ht-btn theme-btn theme-btn-two mb-xs-20">정보수정</button> -->
																<button type="submit" class="ht-btn theme-btn theme-btn-two mb-xs-20">정보수정</button>
																<button class="ht-btn theme-btn theme-btn-two transparent-btn-two">회원탈퇴</button>
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


	<script>
	
		<!-- 닉네임 변경시 중복검사 -->
		function m_nickCheck() {
			$.ajax({
				url : "${contextPath}/account/m_nickChk",
				data : {
					"m_nick" : $("#m_nick").val()
				},
				dataType : 'json',
				type : 'POST',
				success : function(r) {
					if (r == 0) {
						alert('사용할 수 있는 닉네임.');
					}
					else {
						alert('이미 등록된 닉네임 입니다.');
					}
				},
				error : function() {
					alert("서버 요청 실패");
				}
			});
		}
		<!-- 닉네임 변경시 중복검사 end -->
		
		
		function infoUpdate() {
			
		var m_password = $("#m_password").val();
		var confirm_password = $("#confirm_password").val();
			
			if(confirm_password != m_password && confirm_password != ""){
				alert('비밀번호가 일치하지 않습니다');
				return;
			}
			else if(confirm_password == ""){
				alert('개인정보 수정을 위해 [비밀번호]를 입력하세요');
				return;
			} else{
				var form = document.updateForm;
				form.submit();
				
			}
			
		}
		
	</script>

</body>


</html>