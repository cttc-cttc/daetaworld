<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>가게 등록</title>
<%@ include file="../../include/head.jsp" %>

<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">
<script type="module" src="${contextPath}/resources/assets/js/tag_create.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%@ include file="../../include/etc.jsp" %>

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
										<h1>가게 등록</h1>
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
													<li><a href="shopManagement">내 가게</a></li>
													<li><a class="active" href="shopRegister">새 가게</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-10">																
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopName">가게 이름 <span>*</span></label> <input
																				type="text" name="shopName" id="shopName"
																				value="가게 이름을 입력하세요" />
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopAddress">가게 주소 <span>*</span></label>
																			<input type="text" name="shopAddress"
																				value="api 승인받아서 구현해야되네 망할" />
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">

																			<label for="shopPicture">가게 사진 <span>*</span></label>
																			<form name="uploadForm" id="uploadForm"
																				enctype="multipart/form-data" method="post">
																				<div id="dropZone"
																					style="width: 365px; height: 200px; border-style: solid; border-color: black;">
																					<div id="fileDragDesc">파일을 드래그 해주세요.</div>
																					<table id="fileListTable" width="100%" border="0px">
																						<tbody id="fileTableTbody">
																						</tbody>
																					</table>
																				</div>
																			</form>
																			<input type="button"
																				onclick="uploadFile(); return false;"
																				class="btn bg_01" value="파일 업로드">
																		</div>
																	</div>
																	<!-- Single Input End -->

																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopInfo">가게 소개 <span>*</span></label><br>
																			<textarea name="shopInfo" id="shopInfo" rows="3"
																				placeholder="가게 소개를 해보세요"></textarea>
																		</div>
																	</div>

																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopTags">가게 태그 <span>*</span></label><br>
																			<input type="text" id="tag" placeholder="간단한 태그 입력 (6자 이내, 5개까지 가능)" />
																			<ul id="tag-list"></ul>
																		</div>
																	</div>
																</div>															
														</div>
												</div>												
												</form>
												<div class="row">
													<div class="col-12">
														<div
															class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
															<button class="ht-btn theme-btn theme-btn-two mb-xs-20">
																등록</button>
															<button type="button"
																class="ht-btn theme-btn theme-btn-two transparent-btn-two"
																onclick="location.href='${contextPath}/'">홈으로</button>
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