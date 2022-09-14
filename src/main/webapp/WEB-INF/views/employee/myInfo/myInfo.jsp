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
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a style="color: green" class="active"
														href="myInfo">내 정보</a></li>

													<li><a href="resumeManagement">자기소개서 관리</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">
																	<label class="d-block"><span>사진 넣을곳</span></label>
																	<table id="photoarea">
																		<tr>
																			<img src="${contextPath }/resources/images/sponge.png" alt="" style="width:100px; height:200px;">
																		</tr>
																		<tr>
																			<input type="file" id="address-two" name="address-two" placeholder="Enter your Address" value="">
																		</tr>
																	</table>
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="name">이름  <span>*</span></label>
                                                         <input type="text" id="name" name="name" placeholder="이름이요" readonly="readonly" value="${myInfo.m_name}">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="phone">전화번호 <span>*</span></label>
                                                         <input type="text" id="phone" name="phone" placeholder="전화번호요" value="${myInfo.m_phone}">
                                                            
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="email">이메일 <span>*</span></label>
                                                         <table>
            											 	<tr>
		                                                         <td><input type="email" id="email" name="email" placeholder="이메일이요" value="${myInfo.m_email}" style="width: 120%;"></td>
		                                                         <td><input type="button" style="background-color: white;" value="인증"></td>
            											 	</tr>                                            
                                                         </table>
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="address">주소 <span>*</span></label>
	                                                         <input type="text" id="address1" name="address1" placeholder="주소요" value="${myInfo.m_address1}" style="width: 100%;"><br>
	                                                         <input type="text" id="address2" name="address2" placeholder="상세주소요" value="${myInfo.m_address2}" style="width: 100%;">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="nickName">닉네임<span>*</span></label>
                                                         <table>
                                                            <tr>
                                                               <td><input type="text" id="m_nick" name="m_nick" placeholder="별명이요" value="${myInfo.m_nick}" style="width: 120%;"></td>
                                                               <td><input type="button" onclick="m_nickChk()" id="m_nickCheck" name="m_nickCheck" value="중복검사" style="background-color: white;"></td>
                                                            </tr>
                                                         </table>
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="address-two">사진<span>*</span></label>
                                                         <input type="file" id="address-two" name="address-two" placeholder="Enter your Address" value="">
                                                            
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
													<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
														<!-- Single Input Start -->
														<div class="single-input mb-25">
															<label for="m_password">비밀번호 확인</label>
															<table>
																<tr>
																	<td><input type="password" id="m_passwordChk" name="m_passwordChk" value="" placeholder="패스워드 입력"  style="width: 120%;"></td>
																</tr>
																<tr>	
																	<td><input type="checkbox" name="m_terms1" />개인정보 동의</td>
																	<td><input type="checkbox" name="m_terms2"/>마케팅 동의</td>
																</tr>
															</table>
														</div>
													<!-- Single Input End -->
												</div>
																</div>
															
															</div>
														
														</div>
														<input type="hidden" name="m_number" value="${myInfo.m_number}" />
														<input type="hidden" name="m_id" value="${myInfo.m_id}" />
														<input type="hidden" id="m_password" name="e_password" value="${myInfo.m_password}" />
														<input type="hidden" name="m_name" value="${myInfo.m_name}" />
														<input type="hidden" name="m_nick" value="${myInfo.m_nick}" />
														<input type="hidden" name="m_age" value="${myInfo.m_age}" />
														<input type="hidden" name="m_gender" value="${myInfo.m_gender}" />
														<input type="hidden" name="m_phone" value="${myInfo.m_phone}" />
														<input type="hidden" name="m_address1" value="${myInfo.m_address1}" />
														<input type="hidden" name="m_address2" value="${myInfo.m_address2}" />
														<input type="hidden" name="m_picture" value="${myInfo.m_picture}" />
														<input type="hidden" name="m_email" value="${myInfo.m_email}" />
														<input type="hidden" name="m_terms1" value="${myInfo.m_terms1}" />
														<input type="hidden" name="m_terms2" value="${myInfo.m_terms2}" />
														<input type="hidden" name="m_regdate" value="${myInfo.m_regdate}" />
														<input type="hidden" name="m_warned" value="${myInfo.m_warned}" />
														<input type="hidden" name="m_banned" value="${myInfo.m_banned}" />
														<input type="hidden" name="m_quitted" value="${myInfo.m_quitted}" />
														<input type="hidden" name="m_type" value="${myInfo.m_type}" />
														<input type="hidden" name="a_code" value="${myInfo.a_code}" />
														<div class="row">
															<div class="col-12">
																<div class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button onclick="infoUpdate()" id="m_myInfoUpdate" name="m_myInfoUpdate" class="ht-btn theme-btn theme-btn-two mb-xs-20">수정</button>
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
	
		<!-- 닉네임 변경시 중복검사 -->
		function m_nickChk() {
			$.ajax({
				url : "${contextPath}/m_nickCheck",
				data : {
					"m_nick" : $("#m_nick").val()
				},
				dataType : 'json',
				type : 'POST',
				success : function(result) {
					if (result == 0) {
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
		
		
		
		
		
		<!-- 개인정보 수정 (패스워드 일치시) -> 정보수정 -->
		function infoUpdate(m_password1) {
			var m_passwordChk = $("#m_passwordChk").val();
			var m_password = $("#m_password").val();

			if(m_passwordChk == m_password){
				alert('통과~');
			}
			else if(m_passwordChk != m_password && m_passwordChk == null){
				alert('비밀번호가 다릅니다.');
			}
		}
		<!-- 개인정보 수정 (패스워드 일치시) end -->
		
		
		<!-- ajax 개인정보 수정  -->
		
		
		<!-- ajax 개인정보 수정 end -->
		
	</script>

</body>


</html>