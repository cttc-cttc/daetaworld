<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!--Header section start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!--Header section end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<!-- 좌측 메뉴 Start -->
					<%@ include file="../include/admin/left_menu.jsp" %>
					<!-- 좌측 메뉴 End -->
					
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>${title }</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="${contextPath }/admin/user_profile?id=${userInfo.m_id}">기본정보</a></li>
													<li><a href="${contextPath }/admin/user_point?id=${userInfo.m_id}">포인트정보</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<!-- //기본정보 -->
													<div class="row mb-30">
														<div class="col-lg-2">
															<div class="profile-avatar mb-30">																					
																<label class="d-block" for="picture">프로필 사진</label>
																<div style="width: 150px; height: 200px;">																		
																	<c:if test="${userInfo.m_picture == 'default'}">
																		<img src="${contextPath}/resources/images/default_profile.png">
																	</c:if>
																	<c:if test="${userInfo.m_picture != 'default'}">
																		<img src="${contextPath}/displayProfile?fileName=${userInfo.m_picture}">
																	</c:if>
																</div>
															</div>
														</div>
														<div class="col-lg-10">
															<div class="row">
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_name">아이디</label>
																		<input type="text" value="${userInfo.m_id}" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_phone">비밀번호</label>
																		<input type="text" value="${userInfo.m_password}" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_nick">닉네임</label>
																		<input type="text" value="${userInfo.m_nick }" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_email">이름</label>
																		<input type="text" value="${userInfo.m_name }" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_address">전화번호</label>
																		<input type="text" value="${userInfo.m_phone }" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_terms1">선택약관1</label>
																		<c:if test="${userInfo.m_terms1 == 0}">
																			<input type="checkbox" style="width: 50px;" onclick="return false;">
																		</c:if>
																		<c:if test="${userInfo.m_terms1 == 1}">
																			<input type="checkbox" checked="checked" style="width: 50px;" onclick="return false;">
																		</c:if>
																		<br><br>
																		
																		<label for="m_terms1">선택약관2</label>
																		<c:if test="${userInfo.m_terms2 == 0}">
																			<input type="checkbox" style="width: 50px;" onclick="return false;">
																		</c:if>
																		<c:if test="${userInfo.m_terms2 == 1}">
																			<input type="checkbox" checked="checked" style="width: 50px;" onclick="return false;">
																		</c:if>
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_address">이메일</label>
																		<input type="text" value="${userInfo.m_email }" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
																<!-- Single Input Start -->
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label for="m_address">주소</label>
																		<input type="text" value="${userInfo.m_address1 }" readonly="readonly">
																		<input type="text" value="${userInfo.m_address2 }" readonly="readonly">
																	</div>
																</div>
																<!-- Single Input End -->
															</div>
														</div>
													</div>
													<!-- 기본정보// -->
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
		
		<%@ include file="../include/footer.jsp" %>
	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
</body>
</html>