<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>랭킹</title>
<%@ include file="../include/head.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
<style>
	.text-middle {
		text-align: center;
	}
	.first-text {
		font-size: 15px;
		vertical-align: middle;
	}
	.nick-area {
		text-align: left;
		padding-left: 14% !important;
	}
	.nick-area-inner {
		width: 175px;
	}
	.frame-border {
		border: solid thin #ccc;
		border-radius: 10px;
	}
</style>
<body class="template-color-3">
    <div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
		</header>
		<br><br><br><br><br>
		<hr style="margin: 0">
		<div class="dashboard-content-section section bg_color--5">
		<br><br>
			<div class="container">
				<div class="submited-applications mb-50 frame-border">
					<div class="applications-heading">
						<h2 style="margin: 1rem 0;"><strong>오늘의 랭킹</strong></h2>
					</div>
					<div class="applications-main-block" style="padding: 0.5rem;">
						<div class="applications-table text-middle">
							<table class="table">
								<thead>
									<tr>
										<th class="width-15"><h5><strong>순위</strong></h5></th>
										<th class="width-15"></th>
										<th class="width-35"><h5><strong>닉네임</strong></h5></th>
										<th class="width-12"></th>
										<th class="width-23"><h5><strong>평점</strong></h5></th>
									</tr>
								</thead>
									
								<!-- 대타자 평점 랭킹 Start -->
								<c:forEach var="ranking" items="${ranking}" end="50">
									<c:choose>
									<c:when test="${ranking.num == 1}">
										<tr class="application-item">
											<td><h2><span class="first-text"><i class="fas fa-trophy trophy-gold"></i> ${ranking.num}등</span></h2></td>
											<td></td>
											<td class="nick-area"><p class="nick-area-inner">
												<c:if test="${ranking.picture == 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
												</c:if>
												<c:if test="${ranking.picture != 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
												</c:if>
											&nbsp;${ranking.nick }</p></td>
											<td></td>
											<td><i class="fas fa-star star-color"></i> ${ranking.sum }</td>
										</tr>
									</c:when>
									<c:when test="${ranking.num == 2}">
										<tr class="application-item">
											<td><h2><span class="first-text"><i class="fas fa-trophy trophy-silver"></i> ${ranking.num }등</span></h2></td>
											<td></td>
											<td class="nick-area"><p class="nick-area-inner">
												<c:if test="${ranking.picture == 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
												</c:if>
												<c:if test="${ranking.picture != 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
												</c:if>
											&nbsp;${ranking.nick }</p></td>
											<td></td>
											<td><i class="fas fa-star star-color"></i> ${ranking.sum }</td>
										</tr>
									</c:when>
									<c:when test="${ranking.num == 3}">
										<tr class="application-item">
											<td><h2><span class="first-text"><i class="fas fa-trophy trophy-bronze"></i> ${ranking.num}등</span></h2></td>
											<td></td>
											<td class="nick-area"><p class="nick-area-inner">
												<c:if test="${ranking.picture == 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
												</c:if>
												<c:if test="${ranking.picture != 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
												</c:if>
											&nbsp;${ranking.nick }</p></td>
											<td></td>
											<td><i class="fas fa-star star-color"></i> ${ranking.sum }</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="application-item">
											<td><h2><span class="first-text"><i class="fas fa-trophy trophy-bronze" style="visibility: hidden;"></i> ${ranking.num }등</span></h2></td>
											<td></td>
											<td class="nick-area"><p class="nick-area-inner">
												<c:if test="${ranking.picture == 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
												</c:if>
												<c:if test="${ranking.picture != 'default' }">
													<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
												</c:if>
											&nbsp;${ranking.nick }</p></td>
											<td></td>
											<td><i class="fas fa-star star-color"></i> ${ranking.sum }</td>
										</tr>
									</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 랭킹 정보 End -->	
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- footer -->
		<%@ include file="../include/footer.jsp" %>
		
	</div>
    <!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>

</body>
</html>