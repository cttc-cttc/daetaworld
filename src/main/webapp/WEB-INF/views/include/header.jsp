<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
</script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap-theme.min.css"
	integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
	crossorigin="anonymous">
</script>

<link rel="stylesheet" href="${contextPath}/resources/css/header.css">
</head>
<body>
	<div class="container banner">
		<img src="${contextPath}/resources/images/banner.png">
		<div class="login-area">
			<c:if test="${empty userId }">
				<form class="form-horizontal" id="loginForm" action="login" method="post">
					<div class="col-sm-12">
						<input name="userId" type="text" placeholder="ID" class="form-control login-menu" maxlength="15">
					</div>
					<div class="col-sm-12">
						<input name="password" type="password" placeholder="Password" class="form-control login-menu" maxlength="20">
					</div>
					<div class="col-sm-12">
						<button type="submit" class="btn btn-success login-menu login-btn">로그인</button><br>
					</div>
					<ul class="list-inline">
						<li><a href="#" class="login-menu">회원가입</a></li>
						<li><a href="#" class="login-menu">ID찾기</a></li>
						<li><a href="#" class="login-menu">PW찾기</a></li>
					</ul>
				</form>
			</c:if>
			<c:if test="${!empty userId }">
				<c:if test="${userType == 'person'}">
					<div>
						<div class="item">
							<div class="col-sm-3"><!-- 부트스트랩 계정 아이콘 -->
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
								  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
								  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
								</svg>
							</div>
							<div class="col-sm-6">
								<label class="login-info">${userId }님</label>
							</div>
							<div class="col-sm-3"><!-- 부트스트랩 종 아이콘 -->
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
								  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
								</svg>
							</div>
						</div>
						<div class="col-sm-12">
							<label class="login-info">포인트 점수 : 230점</label>
						</div>
						<div class="col-sm-12">
							<button class="btn btn-warning login-info-btn">내 지원 현황</button>
						</div>
						<div class="col-sm-6">
							<button class="btn login-info-btn">마이페이지</button>
						</div>
						<div class="col-sm-6">
							<button class="btn btn-primary login-info-btn" onclick="logout()">로그아웃</button>
						</div>
					</div>
				</c:if>
				<c:if test="${userType == 'company'}">
					<div>
						<div class="item">
							<div class="col-sm-3"><!-- 부트스트랩 계정 아이콘 -->
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
								  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
								  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
								</svg>
							</div>
							<div class="col-sm-6">
								<label class="login-info">${userId }사장님</label>
							</div>
							<div class="col-sm-3"><!-- 부트스트랩 종 아이콘 -->
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
								  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
								</svg>
							</div>
						</div>
						<div class="col-sm-12">
							<label class="login-info">포인트 점수 : 540점</label>
						</div>
						<div class="col-sm-6">
							<button class="btn btn-warning login-info-btn">공고 등록</button>
						</div>
						<div class="col-sm-6">
							<button class="btn btn-warning login-info-btn">지원자 확인</button>
						</div>
						<div class="col-sm-6">
							<button class="btn login-info-btn">마이페이지</button>
						</div>
						<div class="col-sm-6">
							<button class="btn btn-primary login-info-btn" onclick="logout()">로그아웃</button>
						</div>
					</div>
				</c:if>
			</c:if>
		</div>
	</div>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid header-menu">
				<ul class="nav navbar-nav">
					<li><a href="#">일반 구인</a></li>
					<li><a href="#">선호 구인</a></li>
					<li><a href="#">긴급 구인</a></li>
					<li><a href="#">농어촌</a></li>
					<li><a href="#">돌봄</a></li>
					<li><a href="#">리뷰 게시판</a></li>
				</ul>
			</div>
		</nav>
	</div>
	
</body>
</html>