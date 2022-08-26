<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!-- 싱딘 메뉴 end-->
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
										<h1>회원 관리</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<!-- 구인자 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>구인자 회원정보</h3>
											</div>
											<div class="applications-main-block">
												<div class="applications-table text-middle">
													<table class="table">
														<thead>
															<tr>
																<th class="width-15">ID</th>
																<th class="width-15">이름</th>
																<th class="width-12">가입일</th>
																<th class="width-35">상태</th>
																<th class="width-23">상세정보</th>
															</tr>
														</thead>
														<tbody>
															<tr class="application-item">
																<td class="application-job"><h3><span class="id-text">owner1</span></h3></td>
																<td class="application-employer"><span>김김김</span></td>
																<td class="application-created"><span>2020.06.02</span></td>
																<td class="status"><span class="approved">정상</span></td>
																<td class="view-application">
																	<a href="${contextPath }/admin/employer_profile" class="view-application">상세 회원정보 보기</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3><span class="id-text">owner2</span></h3></td>
																<td class="application-employer"><span>이이이</span></td>
																<td class="application-created"><span>2020.11.22</span></td>
																<td class="status"><span class="pending">경고 2회</span></td>
																<td class="view-application">
																	<a href="#" class="view-application">상세 회원정보 보기</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3><span class="id-text">owner3</span></h3></td>
																<td class="application-employer"><span>박박박</span></td>
																<td class="application-created"><span>2020.08.12</span></td>
																<td class="status"><span class="approved">정상</span></td>
																<td class="view-application">
																	<a href="#" class="view-application">상세 회원정보 보기</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job"><h3><span class="id-text">owner4</span></h3></td>
																<td class="application-employer"><span>정정정</span></td>
																<td class="application-created"><span>2020.01.17</span></td>
																<td class="status"><span class="rejected">정지</span></td>
																<td class="view-application">
																	<a href="#" class="view-application">상세 회원정보 보기</a>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="application-pagination mb-30">
													<div class="row">
														<div class="col-12">
															<ul class="page-pagination justify-content-center">
																<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
																<li class="active"><a href="#">1</a></li>
																<li><a href="#">2</a></li>
																<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 구인자 리스트 End -->
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
		<!-- Placed js at the end of the document so the pages load faster -->
	</div>
	<!-- Placed js at the end of the document so the pages load faster -->
	<!-- All jquery file included here -->
	<script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
</body>
</html>