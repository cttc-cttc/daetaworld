<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style>
	.gold{
		color: gold;
	}
	.silver{
		color: silver;
	}
	.bronze{
		color: sienna;
	}
	
</style>

<title>랭킹</title>
<%@ include file="../include/head.jsp" %>
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
						<table class="table">
							<thead>
								<tr>
									<th class="width-15">순위</th>
									<th class="width-15">닉네임</th>
									<th class="width-12">평점</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ranking" items="${ranking }">
								<tr class="application-item">
									<td class="application-job"><h3>
											<a>${ranking.num }</a>
										</h3></td>
									<td class="application-employer">
									<a class="dotted"></a>
									<c:choose>
										<c:when test="${ranking.num == 1}">
											<a class="dotted"><i class="bi bi-star-fill gold"></i>${ranking.nick }</a>
										</c:when>
										<c:when test="${ranking.num == 2 }">
											<a class="dotted"><i class="bi bi-star-fill silver"></i>${ranking.nick }</a>
										</c:when>
										<c:when test="${ranking.num == 3 }">
											<a class="dotted"><i class="bi bi-star-fill bronze"></i>${ranking.nick }</a>
										</c:when>
									</c:choose> 
										</td>
										
									<td class="status"><span class="pending">${ranking.sum}</span></td>
								</tr>
								</c:forEach>								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


		<!-- footer -->
		<%@ include file="../include/footer.jsp" %>
		
	</div>
    <!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
	<script src="${contextPath}/resources/custom_js/account/register.js"></script>

</body>
</html>