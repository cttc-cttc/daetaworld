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

													<li><a href="myInfoUpdate">내 정보 수정</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">
																	<label class="d-block"><span>사진 넣을곳</span></label><img
																		src="assets/images/author/author1.jpg" alt="">
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="name">이름 <span>*</span></label><input
                                                            type="text" id="name" name="name" placeholder="이름이요"
                                                            value="가입시 입력한 이름">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="phone">전화번호 <span>*</span></label><input
                                                            type="text" id="phone" name="phone"
                                                            placeholder="전화번호요" value="가입시 입력한 번호">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="email">이메일 <span>*</span></label><input
                                                            type="email" id="email" name="email"
                                                            placeholder="이메일이요" value="가입시 입력한 이메일">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="address">주소 <span>*</span></label>
                                                         <table>
                                                            <tr>
                                                               <td><input type="text" id="address"
                                                                  name="address" placeholder="주소요"
                                                                  value="가입시 입력한 주소" style="width: 280px;"></td>
                                                               <td><input type="button"
                                                                  style="background-color: white;" value="검색"></td>
                                                            </tr>
                                                         </table>
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="nickName">닉네임<span>*</span></label>
                                                         <table>
                                                            <tr>
                                                               <td><input type="text" id="nickName"
                                                                  name="nickName" placeholder="별명이요"
                                                                  value="가입시 입력한 닉네임" style="width: 280px;"></td>
                                                               <td><input type="button"
                                                                  style="background-color: white;" value="검사"></td>
                                                            </tr>
                                                         </table>
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="address-two">사진<span>*</span></label><input
                                                            type="file" id="address-two" name="address-two"
                                                            placeholder="Enter your Address" value="">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="new-password">새 비밀번호</label>
                                                         <table>
                                                            <tr>
                                                               <td><input type="password" id="new-password"
                                                                  name="new-password" placeholder="새 비밀번호요"
                                                                  value="가입시 입력한 비밀번호" style="width: 280px;"></td>
                                                               <td><input type="button"
                                                                  style="background-color: white;" value="검사"></td>
                                                            </tr>
                                                         </table>
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                   <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
                                                      <!-- Single Input Start -->
                                                      <div class="single-input mb-25">
                                                         <label for="confirm-password">새 비밀번호 확인</label><input
                                                            type="password" id="confirm-password"
                                                            name="confirm-password" placeholder="새 비밀번호를 입력하세요."
                                                            value="">
                                                      </div>
                                                      <!-- Single Input End -->
                                                   </div>
                                                </div>
															<div>
															<input type="checkbox" /> 열람동의
														</div>
														<br>
														<div>
															<input type="checkbox" /> 알림동의
														</div>
															</div>
														
														</div>

														<div class="row">
															<div class="col-12">
																<div
																	class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button class="ht-btn theme-btn theme-btn-two mb-xs-20">수정</button>
																		
																	<button
																		class="ht-btn theme-btn theme-btn-two transparent-btn-two">회원탈퇴</button>
																		
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
</body>
</html>