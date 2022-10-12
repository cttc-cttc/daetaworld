<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>랭킹</title>
<%@ include file="../include/head.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
<body class="template-color-3">
    <div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
		</header>
		<br><br><br><br><br><br>
		<div class="container">

			<div class="submited-applications mb-50">
				<div class="applications-heading">
					<h2>오늘의 랭킹</h2>
				</div>
				<div class="applications-main-block">
					<div class="applications-table">
								<table>
									<tr>
										<td><h5><strong>순위</strong></h5></td>
										<td><h5><strong>닉네임</strong></h5></td>
										<td><h5><strong>평점</strong></h5></td>
									</tr>
								</table>
								
						<!-- 대타자 평점 랭킹 Start -->
									<c:forEach var="ranking" items="${ranking}" end="50">
									<c:choose>
									<c:when test="${ranking.num == 1}">
										<div class="single-list-blog">
											<div class="col-lg-4"><i class="fas fa-trophy trophy-gold"></i>${ranking.num}등</div>
											<div class="col-lg-4">
											<c:if test="${ranking.picture == 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
											</c:if>
											<c:if test="${ranking.picture != 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
											</c:if>
											<span>${ranking.nick }</span>
											</div>
											<div class="col-lg-4"><i class="fas fa-star star-color"></i>${ranking.sum }</div>
										</div>
									</c:when >
									<c:when test="${ranking.num == 2}">
										<div class="single-list-blog">
											<div class="col-lg-4"><i class="fas fa-trophy trophy-silver"></i>${ranking.num }등</div>
											
											<c:if test="${ranking.picture == 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
											</c:if>
											<c:if test="${ranking.picture != 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
											</c:if>
											<span>${ranking.nick }</span>
											<div class="col-lg-4"><i class="fas fa-star star-color"></i>${ranking.sum }</div>
										</div>
									</c:when >
									<c:when test="${ranking.num == 3}">
										<div class="single-list-blog">
											<div class="col-lg-4"><i class="fas fa-trophy trophy-bronze"></i>${ranking.num}등</div>
											<div class="col-lg-4">
											<c:if test="${ranking.picture == 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
											</c:if>
											<c:if test="${ranking.picture != 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
											</c:if>
											<span>${ranking.nick }</span>
											</div>
											<div class="col-lg-4"><i class="fas fa-star star-color"></i>${ranking.sum }</div>
										</div>
									</c:when >
									<c:otherwise>
										<div class="single-list-blog">
											<div class="col-lg-4">${ranking.num }등</div>
											<div class="col-lg-4">
											<c:if test="${ranking.picture == 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/resources/images/default_profile.png">
											</c:if>
											<c:if test="${ranking.picture != 'default' }">
												<img class="rounded-circle ranking-picture" src="${contextPath}/displayProfile?fileName=${ranking.picture}">
											</c:if>
											<span>${ranking.nick }</span>
											</div>
											<div class="col-lg-4"><i class="fas fa-star star-color"></i>${ranking.sum }</div>
										</div>
									</c:otherwise>
									</c:choose>
									
									</c:forEach>
								<!-- 랭킹 정보 End -->	
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