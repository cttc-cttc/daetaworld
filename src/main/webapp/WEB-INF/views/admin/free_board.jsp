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
										<h1>신고 관리</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<!-- 자유게시판 신고 글 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>자유게시판 글</h3>
											</div>
											<div class="applications-main-block">
												<div class="applications-table text-middle">
													<table class="table">
														<thead>
															<tr>
																<th class="width-35 text-left">제목</th>
																<th class="width-15">작성자</th>
																<th class="width-12">작성일</th>
																<th class="width-15">신고사유</th>
																<th class="width-23">추가작업</th>
															</tr>
														</thead>
														<tbody>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">◆◆언제나 당신곁에 @%$&#!!◆◆</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">user661</a></td>
																<td class="application-created"><span>2021.09.17</span></td>
																<td class="status">광고성 게시글</td>
																<td class="view-application">
																	<a href="#" class="view-application">글삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">아니 생각할수록 사장 개빡치네 진짜</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">user83</a></td>
																<td class="application-created"><span>2021.11.22</span></td>
																<td class="status">비속어 사용</td>
																<td class="view-application">
																	<a href="#" class="view-application">글삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">오늘의 대타일기</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">user227</a></td>
																<td class="application-created"><span>2021.05.08</span></td>
																<td class="status">광고성 게시글</td>
																<td class="view-application">
																	<a href="#" class="view-application">글삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">◆◆언제나 당신곁에 @%$&#!!◆◆</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">user661</a></td>
																<td class="application-created"><span>2021.09.17</span></td>
																<td class="status">불법성 게시글</td>
																<td class="view-application">
																	<a href="#" class="view-application">글삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
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
										<!-- 자유게시판 신고 글 리스트 End -->
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