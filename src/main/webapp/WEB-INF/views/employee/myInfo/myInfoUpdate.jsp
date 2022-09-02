<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>내 정보 수정</title>
<%@ include file="../../include/head.jsp"%>
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
										<h1>내 정보 수정</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="myInfo">내 정보</a></li>
													<li><a style="color:green" class="active" href="myInfoUpdate">내 정보 수정</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<ul>
															<li>회원정보는 <a href="/customer/privacy.asp" target="_blank" class="link" style="color:blue">개인정보처리방침</a>
																에 따라 안전하게 보호되며, 회원님의 동의 없이 공개 또는 제 3자에게 제공되지 않습니다.
															</li>
															<li>
																<b class="point">이름, 생년월일, 성별</b>
																정보는 본인확인을 통해 수정하실 수 있습니다.&nbsp;&nbsp;
																<a href="javascript:;" class="link" onclick="openwinNameChg()" style="color:blue"><small>[본인인증 하기]</small></a>
															</li>
														</ul>
														<hr>
														<div>
														<b>아이디&nbsp; </b> ${loginUser}
														</div><br>
														<div>
														<b>닉네임&nbsp; </b> 대타맨
														</div><br>
														<div>
														<b>이름&nbsp; </b> 홍길동
														</div><br>
														<div>
														<b>생년월일/성별&nbsp; </b> 1995/04/07 [남자]
														</div><br>
														<form name='frm'>
														<div>
															<b>휴대폰&nbsp; </b>
															<sapn>
															<input type="text" size="3" value="010" /></sapn>
															-
															<sapn>
															<input type="text" size="3" value="5498" /></sapn>
															-
															<sapn>
															<input type="text" size="3" value="1097" /></sapn>
														</div>
														<br>

														<div>
															<table>
																<tr>
																<td><b>이메일&nbsp; </b></td>
																
																	<td>
																	<input name="e1" id="e1" type="text" style="width: 120px" value="tlsgns1097">
																	</td>
																	
																	<td>
																		&nbsp;@&nbsp;
																	</td>
																	
																	<td>
																	<input name="e2" type="text" style="width: 120px" value="">
																	</td>
																	
																	<td>
																		<select name="email_server" id="email_server" onchange="input_email();">
																			<option value="">직접입력</option>
																			<option value="naver.com">naver.com</option>
																			<option value="nate.com">nate.com</option>
																			<option value="hanmail.net">hanmail.net</option>
																			<option value="gmail.com">gmail.com</option>
																			<option value="yahoo.com">yahoo.com</option>
																			<option value="yahoo.co.kr">yahoo.co.kr</option>
																			<option value="hotmail.com">hotmail.com</option>
																		</select>
																	</td>
																</tr>

															</table>
														</div>
														<br>
														<b>주소&nbsp; </b> <input type="text" value="경기도 평택시 어떤곳"/>&nbsp;&nbsp;&nbsp;<button>검색</button>

													</form>
													<hr>
													<button>변경</button>&nbsp;&nbsp;&nbsp;&nbsp;<button>취소</button>
													
													
													<script language="javascript">
														function input_email(){	document.frm.e2.value = document.frm.email_server.value;}
													</script>
													
													
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