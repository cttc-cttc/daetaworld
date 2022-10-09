<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
										<!-- 블랙리스트 Start -->
										<div class="submited-applications mb-50">
											<div class="applications-heading">
												<h3>블랙리스트</h3>
											</div>
											<c:if test="${listZero == null }">
												<div class="applications-main-block">
													<div class="applications-table text-middle">
														<table class="table">
															<thead>
																<tr>
																	<th class="width-15">ID</th>
																	<th class="width-15">닉네임</th>
																	<th class="width-12">가입일</th>
																	<th class="width-35">신고사유</th>
																	<th class="width-23">상세정보</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="list" items="${blacklist }">
																	<tr class="application-item">
																		<td class="application-job"><h3><span class="id-text">${list.m_id }</span></h3></td>
																		<td class="application-employer"><span>${list.m_nick }</span></td>
																		<td class="application-created"><span>${list.m_regdate }</span></td>
																		<td class="status">
																			<c:forEach var="r_type_info" items="${list.r_types_info }">
																				<%-- 글번호, 공고번호, 댓글번호 중 신고됐을 때 작성했던 글로 이동 --%>
																				<%-- 자유게시판 글 신고였던 경우 --%>
																				<c:if test="${r_type_info.r_kind_type == 1 }">
																					<a href="${contextPath }/board/free/detail?b_number=${r_type_info.b_number }">
																						<span class="rejected report-tag-hover">${r_type_info.r_type }</span>
																					</a>
																				</c:if>
																				<%-- 자유게시판 댓글 신고였던 경우 --%>
																				<c:if test="${r_type_info.r_kind_type == 2 }">
																					<a href="${contextPath }/board/free/detail?b_number=${r_type_info.b_number }#anc${r_type_info.c_number}">
																						<span class="rejected report-tag-hover">${r_type_info.r_type }</span>
																					</a>
																				</c:if>
																				<%-- 땜빵게시판 글 신고였던 경우 --%>
																				<c:if test="${r_type_info.r_kind_type == 3 }">
																					<a href="${contextPath }/board/temping/tempingdetail?b_number=${r_type_info.b_number }">
																						<span class="rejected report-tag-hover">${r_type_info.r_type }</span>
																					</a>
																				</c:if>
																				<%-- 땜빵게시판 댓글 신고였던 경우 --%>
																				<c:if test="${r_type_info.r_kind_type == 4 }">
																					<a href="${contextPath }/board/temping/tempingdetail?b_number=${r_type_info.b_number }#anc${r_type_info.c_number}">
																						<span class="rejected report-tag-hover">${r_type_info.r_type }</span>
																					</a>
																				</c:if>
																				<%-- 구인공고 글 신고였던 경우 --%>
																				<c:if test="${r_type_info.r_kind_type == 5 }">
																					<a href="${contextPath }/jobAds/nonMember?a_number=${r_type_info.a_number }">
																						<span class="rejected report-tag-hover">${r_type_info.r_type }</span>
																					</a>
																				</c:if>
																			</c:forEach>
																		</td>
																		<td class="view-application">
																			<a href="${contextPath }/admin/user_profile?num=${list.m_number}" class="view-application">상세 회원정보 보기</a>
																		</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
													<div class="application-pagination mb-30">
														<div class="row">
															<div class="col-12">
																<ul class="page-pagination justify-content-center">
																	<%-- 이전 버튼 활성/비활성 --%>
																	<c:if test="${pp.getCurrPage() != 1 }">
																		<li><a href="${contextPath }/admin/blacklist?page=${pp.getCurrPage()-1}"><i class="fa fa-angle-left"></i></a></li>
																	</c:if>
																	<c:if test="${pp.getCurrPage() == 1 }">
																		<li><a class="disabled-btn"><i class="fa fa-angle-left"></i></a></li>
																	</c:if>
																	<%-- 페이지 버튼 활성/비활성 --%>
																	<c:forEach var="pageNaviNum" items="${pp.calcPageRange() }">
																		<c:if test="${pageNaviNum == pp.getCurrPage()}">
																			<li class="active"><a class="current-btn">${pageNaviNum }</a></li>
																		</c:if>
																		<c:if test="${pageNaviNum != pp.getCurrPage()}">
																			<li><a href="${contextPath }/admin/blacklist?page=${pageNaviNum}">${pageNaviNum }</a></li>
																		</c:if>
																	</c:forEach>
																	<%-- 다음 버튼 활성/비활성 --%>
																	<c:if test="${pp.getCurrPage() != pp.calcLastPage() }">
																		<li><a href="${contextPath }/admin/blacklist?page=${pp.getCurrPage()+1}"><i class="fa fa-angle-right"></i></a></li>
																	</c:if>
																	<c:if test="${pp.getCurrPage() == pp.calcLastPage() }">
																		<li><a class="disabled-btn"><i class="fa fa-angle-right"></i></a></li>
																	</c:if>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</c:if>
											<c:if test="${listZero != null }">
												<div class="applications-main-block">
													<div class="applications-table text-middle">
														<p style="margin-top: 2rem;">${listZero }</p>
													</div>
												</div>
											</c:if>
										</div>
										<!-- 블랙리스트 End -->
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
	<%@ include file="../include/plugin.jsp" %>
	
</body>
</html>