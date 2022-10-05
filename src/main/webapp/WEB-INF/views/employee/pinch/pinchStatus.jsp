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
										<h1>지원 현황</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="pinchHistory?m_id=${loginInfo.m_id}">대타 내역</a></li>
													<li><a class="active" href="pinchStatus?m_id=${loginInfo.m_id}">지원 현황</a></li>
													<li><a href="requests?m_id=${loginInfo.m_id}">알바 요청 확인</a></li>
													<li><a href="pinchExpired?m_id=${loginInfo.m_id}">완료된 공고</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													구직자의 지원내역
													<table class="table table-striped">
														<thead>
															<th>가게명</th>													
															<th>날짜</th>															
															<th>시간</th>
															<th>시급</th>
															<th>급구</th>
															<th>지원상태</th>
															<th>공고상태</th>
															<th></th>
														</thead>
														<c:forEach var="adsList" items="${list}">
															<input type="hidden" name="adsStatus" value="${adsList.jae_status}" />
															<tr>
																<!-- 확정전 상태일때 확정/거절 하러가기 -->
																<c:choose>
																	<c:when test="${adsList.jae_status == 1}">
																		<td type="button" onclick="location.href='${contextPath}/employeeMapper/pinchStatusCheck?m_id=${loginInfo.m_id}&s_number=${adsList.s_number}&a_number=${adsList.a_number}&s_name=${adsList.s_name}'">${adsList.s_name}</td>
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
																				<c:out value="거절"></c:out>
																			</c:if>
																			<c:if test="${status == 4 }">
																				<c:out value="요청받음"></c:out>
																			</c:if>
																		</td>
																		<td>
																		<c:set var="a_status" value="${adsList.a_status }"/>
																			<c:if test="${a_status == 0 }">
																				<c:out value="구인중"></c:out>
																			</c:if>
																			<c:if test="${a_status == 1 }">
																				<c:out value="신청중"></c:out>
																			</c:if>
																			<c:if test="${a_status == 2 }">
																				<c:out value="구인완료"></c:out>
																			</c:if>
																			<c:if test="${a_status == 3 }">
																				<c:out value="알바완료"></c:out>
																			</c:if>
																			<c:if test="${a_status == 4 }">
																				<c:out value="기간만료"></c:out>
																			</c:if>
																		</td>
																		<td>
																			<svg onclick="location.href='apply_o?ja_number=${adsList.ja_number}&m_id=${loginInfo.m_id}'" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
																			  <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
																			</svg> 
																			<svg onclick="location.href='apply_x?ja_number=${adsList.ja_number}&m_id=${loginInfo.m_id}'" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-down-fill" viewBox="0 0 16 16">
																			  <path d="M6.956 14.534c.065.936.952 1.659 1.908 1.42l.261-.065a1.378 1.378 0 0 0 1.012-.965c.22-.816.533-2.512.062-4.51.136.02.285.037.443.051.713.065 1.669.071 2.516-.211.518-.173.994-.68 1.2-1.272a1.896 1.896 0 0 0-.234-1.734c.058-.118.103-.242.138-.362.077-.27.113-.568.113-.856 0-.29-.036-.586-.113-.857a2.094 2.094 0 0 0-.16-.403c.169-.387.107-.82-.003-1.149a3.162 3.162 0 0 0-.488-.9c.054-.153.076-.313.076-.465a1.86 1.86 0 0 0-.253-.912C13.1.757 12.437.28 11.5.28H8c-.605 0-1.07.08-1.466.217a4.823 4.823 0 0 0-.97.485l-.048.029c-.504.308-.999.61-2.068.723C2.682 1.815 2 2.434 2 3.279v4c0 .851.685 1.433 1.357 1.616.849.232 1.574.787 2.132 1.41.56.626.914 1.28 1.039 1.638.199.575.356 1.54.428 2.591z"/>
																			</svg>
																		</td>
																	</c:when>
																	
																	<c:otherwise>
																		<td type="button" onclick="location.href='${contextPath}/jobAds/listAllDetail?m_id=${loginInfo.m_id}&s_number=${adsList.s_number}&a_number=${adsList.a_number}&s_name=${adsList.s_name}'">${adsList.s_name}</td>
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
																				<c:out value="거절"></c:out>
																			</c:if>
																			<c:if test="${status == 4 }">
																				<c:out value="요청받음"></c:out>
																			</c:if>
																		</td>
																		<td>
																		<c:set var="a_status" value="${adsList.a_status }"/>
																			<c:if test="${a_status == 0 }">
																				<c:out value="구인중"></c:out>
																			</c:if>
																			<c:if test="${a_status == 1 }">
																				<c:out value="신청중"></c:out>
																			</c:if>
																			<c:if test="${a_status == 2 }">
																				<c:out value="구인완료"></c:out>
																			</c:if>
																			<c:if test="${a_status == 3 }">
																				<c:out value="알바완료"></c:out>
																			</c:if>
																			<c:if test="${a_status == 4 }">
																				<c:out value="기간만료"></c:out>
																			</c:if>
																		</td>
																		<td>
																			<input type="button" value="취소" onclick="apply_cancel()"/>
																			<input type="hidden">
																		</td>
																	</c:otherwise>
																</c:choose>
																
																
																
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
		function apply_cancel() {
			alert('공고 지원한거 취소할래?');
		}
	
	</script>
	
	
	<!-- 확정전 상태에서 수락/거절 체크하러 가자~ -->
	<script type="text/javascript">
		function ads_status() {
			alert('ggg');
			
			
		}
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>