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
					<div class="col-xl-2 col-lg-3">
						<div class="dashboard-sidebar">
							<div class="dashboard-menu">
								<ul class="nav">
									<li>
										<h3>회원 관리</h3>
										<ul>
											<li><a href="${contextPath }/admin/employee_info"><i class="lnr lnr-users"></i>구직자</a></li>
											<li><a href="${contextPath }/admin/employer_info"><i class="lnr lnr-user"></i>구인자</a></li>
											<li><a href="${contextPath }/admin/blacklist"><i class="lnr lnr-thumbs-down"></i>블랙리스트</a></li>
										</ul>
									</li>
									<li>
										<h3>신고 관리</h3>
										<ul>
											<li><a class="active" href="${contextPath }/admin/job_ads"><i class="lnr lnr-briefcase"></i>구인공고</a></li>
											<li><a href="${contextPath }/admin/free_board"><i class="lnr lnr-file-empty"></i>자유게시판 글</a></li>
											<li><a href="${contextPath }/admin/free_comment"><i class="lnr lnr-pencil"></i>자유게시판 댓글</a></li>
											<li><a href="${contextPath }/admin/temping_board"><i class="lnr lnr-file-empty"></i>땜빵게시판 글</a></li>
											<li><a href="${contextPath }/admin/temping_comment"><i class="lnr lnr-pencil"></i>땜빵게시판 댓글</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
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
										<!-- 구인공고 신고 리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>구인공고</h3>
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
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">머슥타드 프라이 테헤란점</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">owner123</a></td>
																<td class="application-created"><span>2021.09.17</span></td>
																<td class="status">최저시급 미준수</td>
																<td class="view-application">
																	<a href="#" class="view-application">공고삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">구인공고 제목2</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">owner83</a></td>
																<td class="application-created"><span>2021.11.22</span></td>
																<td class="status">광고성 게시글</td>
																<td class="view-application">
																	<a href="#" class="view-application">공고삭제</a>&nbsp;&nbsp;
																	<a href="#" class="view-application">신고취소</a>
																</td>
															</tr>
															<tr class="application-item">
																<td class="application-job text-left"><h3><a class="text-ellipsis" href="#">구인공고 제목3</a></h3></td>
																<td class="application-employer"><a class="dotted" href="#">owner227</a></td>
																<td class="application-created"><span>2021.05.08</span></td>
																<td class="status">최저시급 미준수</td>
																<td class="view-application">
																	<a href="#" class="view-application">공고삭제</a>&nbsp;&nbsp;
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
										<!-- 구인공고 신고 리스트 End -->
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