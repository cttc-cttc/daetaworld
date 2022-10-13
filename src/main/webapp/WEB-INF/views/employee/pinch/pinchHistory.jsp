<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>대타 내역</title>
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
										<h1>대타 내역</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="pinchHistory?m_id=${loginInfo.m_id}">대타 내역</a></li>
													<li><a href="pinchStatus?m_id=${loginInfo.m_id}">지원 현황</a></li>
													<li><a href="requests?m_id=${loginInfo.m_id}">요청받은 공고</a></li>
													<li><a href="pinchExpired?m_id=${loginInfo.m_id}">완료된 공고</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													구직자의 전체 대타내역
													<table class="table table-striped">
														<thead>		
															<th>가게명</th>													
															<th>날짜</th>															
															<th>시간</th>
															<th>시급</th>
															<th>급구</th>
															<th>지원상태</th>
															<th>공고상태</th>
														</thead>
														<c:forEach var="adsList" items="${list}">
															<tr>
															<c:choose>
																<c:when test="${adsList.a_status == 3}">
																	<td type="button" onclick="expiredPinch()">${adsList.s_name}</td>
																</c:when>
																<c:otherwise>
																	<td type="button" onclick="location.href='${contextPath}/jobAds/listAllDetail?m_id=${loginInfo.m_id}&s_number=${adsList.s_number}&a_number=${adsList.a_number}&s_name=${adsList.s_name}'">${adsList.s_name}</td>
																</c:otherwise>
															</c:choose>	
																<td>${adsList.a_date }</td>
																<td>${adsList.a_time }</td>
																<td>${adsList.a_wage }원</td>
																<td>
																<c:set var="urgency" value="${adsList.a_urgency }"/>
																	<c:if test="${urgency == 1 }">
																		<c:out value="o"></c:out>
																	</c:if>
																	<c:if test="${urgency == 0 }">
																		<c:out value="x"></c:out>
																	</c:if>
																</td>
																
																<!-- 공고 지원 상태 -->																																
																<td>
																<c:set var="status" value="${adsList.jae_status }"/>
																	<c:if test="${status == 0 }">
																		<c:out value="지원함"></c:out>
																	</c:if>
																	<c:if test="${status == 1 }">
																		<c:out value="확정전"></c:out>
																	</c:if>
																	<c:if test="${status == 2 }">
																		<c:out value="수락"></c:out>
																	</c:if>
																	<c:if test="${status == 3 }">
																		<c:out value="신청취소"></c:out>
																	</c:if>
																	<c:if test="${status == 4 }">
																		<c:out value="요청받음"></c:out>
																	</c:if>
																	<c:if test="${status == 5 }">
																		<c:out value="요청수락"></c:out>
																	</c:if>
																	<c:if test="${status == 6 }">
																		<c:out value="요청거절"></c:out>
																	</c:if>
																	<c:if test="${status == 7 }">
																		<c:out value="후기완료"></c:out>
																	</c:if>
																</td>
																
																<!-- 대타상태 -->
																<td>
																<c:set var="a_status" value="${adsList.a_status }"/>
																	<c:if test="${a_status != 3 && adsList.jae_status == 2}">
																		<c:out value="알바확정"></c:out>
																	</c:if>
																	<c:if test="${a_status == 0 && adsList.jae_status != 2 }">
																		<c:out value="구인중"></c:out>
																	</c:if>
																	<c:if test="${a_status == 1 && adsList.jae_status != 2 }">
																		<c:out value="신청중"></c:out>
																	</c:if>
																	<c:if test="${a_status == 2 && adsList.jae_status != 2 }">
																		<c:out value="구인완료"></c:out>
																	</c:if>
																	<c:if test="${a_status == 3 }">
																		<span style="color: red;"><c:out value="알바완료"></c:out></span>
																	</c:if>
																	<c:if test="${a_status == 4 && adsList.jae_status != 2 }">
																		<c:out value="기간만료"></c:out>
																	</c:if>
																</td>
															</tr>
														</c:forEach>
													</table>
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
		function expiredPinch(){
			alert('완료한 공고입니다.');
		}
	</script>
	
	
	
	
	
</body>
</html>