<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${contextPath}/resources/custom_css/header.css">
<div class="main-header">
	<div class="container pl-15 pl-md-0 pr-15 pr-md-0">
		<div class="row align-items-center no-gutters">
			<!--Logo start-->
			<div class="col-xl-2 col-lg-2 col-12">
				<div class="logo">
					<a href=""><img src="${contextPath}/resources/images/logo100.png" alt="오늘의대타"></a>
				</div>
			</div>
			<!--Logo end-->
			<!--Menu start-->
			<div class="col-xl-7 col-lg-7 col-12">
				<nav class="main-menu padding-16">
					<ul class="menu-ul">
						<li><a href="${contextPath }/jobAds/listAll">일반구인</a></li>
						<li><a href="${contextPath }/jobAds/listUrgency">긴급구인</a></li>
						<li><a href="${contextPath }/jobAds/listUrgency">직업추천</a></li>
						<li><a href="${contextPath }/jobAds/listCountry">농어촌</a></li>
						<li><a href="${contextPath }/jobAds/listCare">랭킹</a></li>
						<li><a>게시판<small class="icon-arrow"></small></a>
							<ul class="sub-menu">
								<li><a href="${contextPath }/board/free">자유게시판</a></li>
								<li><a href="${contextPath }/board/temping">땜빵게시판</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			<!--Menu end-->
			<!-- Cart & Search Area Start -->
			<div class="col-xl-3 col-lg-3 col-12">
				<!-- 로그인 유저 없음 -->
				<c:if test="${loginUser == null }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<div class="jp-author item">
								<a href="${contextPath}/login"><i class="lnr lnr-user"></i><span>로그인</span></a>
							</div>
							<div class="jp-author-action-two item">
								<a class="ht-btn header-btn" href="${contextPath}/JoinRore">회원가입</a>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 관리자 로그인 -->
				<c:if test="${loginType == 0 }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<!-- 알림 토글 Start --> 
							<div class="jp-author item">
								<div class="dropdown notifications-menu">
									<a id="alarm" data-toggle="dropdown" aria-expanded="false">
										<i class="lnr lnr-alarm alarm-hover"></i>
										<span class="label-alarm">5</span>
									</a>
									<div class="dropdown-menu" aria-labelledby="alarm">
										<a class="dropdown-item drdn-item" href="#">자유게시판 20번 글 신고됨</a>
										<a class="dropdown-item drdn-item" href="#">자유게시판 107번 댓글 신고됨</a>
										<a class="dropdown-item drdn-item" href="#">땜빵게시판 45번 댓글 신고됨</a>
										<a class="dropdown-item drdn-item" href="#">땜빵게시판 392번 글 신고됨</a>
										<a class="dropdown-item drdn-item" href="#">구인공고 74번 신고됨</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item drdn-item last" href="#"><i class="lnr lnr-trash"></i>모든 알림 삭제</a>
									</div>
								</div>
							</div>
							<!-- 알림 토글 End --> 
							<!-- 유저메뉴 토글 Start -->
							<div class="jp-author item">
								<a id="userMenu" data-toggle="dropdown" aria-expanded="false">
									<img src="${contextPath}/resources/assets/images/team/ab-team3.jpg" class="rounded-circle profile-image">
									&nbsp;<span class="user-hover">${loginUser }님</span>
								</a>
								<div class="dropdown-menu" aria-labelledby="userMenu">
									<a class="dropdown-item drdn-item" href="${contextPath }/admin/employee_list">관리자 화면</a>
								</div>
							</div>
							<!-- 유저메뉴 토글 End -->
							<div class="jp-author-action-two item">
								<a href="${contextPath}/logout"><span>로그아웃</span></a>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 개인회원 로그인 -->
				<c:if test="${loginType == 1 }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<!-- 알림 토글 Start --> 
							<div class="jp-author item">
								<div class="dropdown notifications-menu">
									<a id="alarm" data-toggle="dropdown" aria-expanded="false">
										<i class="lnr lnr-alarm alarm-hover"></i>
										<span class="label-alarm">3</span>
									</a>
									<div class="dropdown-menu" aria-labelledby="alarm">
										<a class="dropdown-item drdn-item" href="#">할리바게트 매탄점 지원결과</a>
										<a class="dropdown-item drdn-item" href="#">신고 1회, 사유:광고성 게시글</a>
										<a class="dropdown-item drdn-item" href="#">배달매니아 영통점 지원결과</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item drdn-item last" href="#"><i class="lnr lnr-trash"></i>모든 알림 삭제</a>
									</div>
								</div>
							</div>
							<!-- 알림 토글 End --> 
							<!-- 유저메뉴 토글 Start -->
							<div class="jp-author item">
								<a id="userMenu" data-toggle="dropdown" aria-expanded="false">
									<img src="${contextPath}/resources/assets/images/team/ab-team1.jpg" class="rounded-circle profile-image">
									&nbsp;<span class="user-hover">${loginUser }님</span>
								</a>
								<div class="dropdown-menu" aria-labelledby="userMenu">
									<a class="dropdown-item drdn-item" href="${contextPath}/point/pointManagement">포인트 점수 : 230점</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/pinchStatus">내 지원 현황</a>
									<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/myInfo">마이페이지</a>
								</div>
							</div>
							<!-- 유저메뉴 토글 End -->
							<div class="jp-author-action-two item">
								<a href="${contextPath}/logout"><span>로그아웃</span></a>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 기업회원 로그인 -->
				<c:if test="${loginType == 2 }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<!-- 알림 토글 Start --> 
							<div class="jp-author item">
								<div class="dropdown notifications-menu">
									<a id="alarm" data-toggle="dropdown" aria-expanded="false">
										<i class="lnr lnr-alarm alarm-hover"></i>
										<span class="label-alarm">3</span>
									</a>
									<div class="dropdown-menu" aria-labelledby="alarm">
										<a class="dropdown-item drdn-item" href="#">리너스 카페 산본점 지원신청 1건</a>
										<a class="dropdown-item drdn-item" href="#">리너스 카페 산본점 지원신청 1건</a>
										<a class="dropdown-item drdn-item" href="#">리너스 카페 안양점 지원신청 1건</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item drdn-item last" href="#"><i class="lnr lnr-trash"></i>모든 알림 삭제</a>
									</div>
								</div>
							</div>
							<!-- 알림 토글 End --> 
							<!-- 유저메뉴 토글 Start -->
							<div class="jp-author item">
								<a id="userMenu" data-toggle="dropdown" aria-expanded="false">
									<img src="${contextPath}/resources/assets/images/team/ab-team2.jpg" class="rounded-circle profile-image">
									&nbsp;<span class="user-hover">${loginUser }님</span>
								</a>
								<div class="dropdown-menu" aria-labelledby="userMenu">
									<a class="dropdown-item drdn-item" href="${contextPath}/point/pointManagement">포인트 점수 : 540점</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item drdn-item" href="${contextPath}/employer/adsRegister">공고 등록</a>
									<a class="dropdown-item drdn-item" href="${contextPath}/employer/candidates">지원자 확인</a>
									<a class="dropdown-item drdn-item" href="${contextPath}/employer/myInfo/myInfo">마이페이지</a>
								</div>
							</div>
							<!-- 유저메뉴 토글 End -->
							<div class="jp-author-action-two item">
								<a href="${contextPath}/logout"><span>로그아웃</span></a>
							</div>
						</div>
					</div>
				</c:if>
			</div>
			<!-- Cart & Search Area End -->
		</div>
	</div>
</div>