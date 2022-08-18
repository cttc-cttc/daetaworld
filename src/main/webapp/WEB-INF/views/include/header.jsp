<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="${contextPath}/resources/custom_css/header.css">
<!-- 상단 메뉴 start-->
<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
	<div class="main-header">
		<div class="container pl-15 pl-md-0 pr-15 pr-md-0">
			<div class="row align-items-center no-gutters">
				<!--Logo start-->
				<div class="col-xl-2 col-lg-2 col-12">
					<div class="logo">
						<a href="./"><img src="${contextPath}/resources/images/banner.png" alt=""></a>
					</div>
				</div>
				<!--Logo end-->
				<!--Menu start-->
				<div class="col-xl-7 col-lg-7 col-12">
					<nav class="main-menu padding-16">
						<ul class="menu-ul">
							<li><a href="#">일반구인</a></li>
							<li><a href="#">선호구인</a></li>
							<li><a href="#">긴급구인</a></li>
							<li><a href="#">농어촌</a></li>
							<li><a href="#">돌봄</a></li>
							<li><a href="#">게시판<small class="icon-arrow"></small></a>
								<ul class="sub-menu">
									<li><a href="#">자유게시판</a></li>
									<li><a href="#">땜빵게시판</a></li>
									<li><a href="adminPage">관리자 화면</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
				<!--Menu end-->
				<!-- Cart & Search Area Start -->
				<div class="col-xl-3 col-lg-3 col-12">
					<c:if test="${loginUser == null }">
						<div class="header-btn-action d-flex justify-content-end">
							<div class="btn-action-wrap d-flex">
								<div class="jp-author item">
									<a href="${contextPath}/login"><i class="lnr lnr-user"></i><span>로그인</span></a>
								</div>
								<div class="jp-author-action-two item">
									<a class="ht-btn header-btn" href="#">회원가입</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${loginUser != null }">
						<div class="header-btn-action d-flex justify-content-end">
							<div class="btn-action-wrap d-flex">
								<div class="jp-author item">
									<i class="lnr lnr-user"></i><span>${loginUser }님</span>
								</div>
								<div class="jp-author item">
									<!-- 알림 토글 --> 
									<div class="dropdown notifications-menu">
										<a data-toggle="dropdown" aria-expanded="false"><i class="lnr lnr-alarm"></i><span class="label-alarm">5</span></a>
										<ul class="dropdown-menu alarm-area">
											<li class="alarm-header">You have 10 notifications</li>
											<li>
												<!-- Inner Menu: contains the notifications -->
												<ul class="alarm-body">
													<!-- start notification -->
													<li>
														<a href="#"> 5 new members joined today</a>
													</li>
													<li>
														<a href="#"> 10 new members joined today</a>
													</li>
													<!-- end notification -->
												</ul>
											</li>
											<li class="alarm-footer"><a href="#">View all</a></li>
										</ul>
									</div>
									<!-- 알림 토글 --> 
								</div>
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
</header>
<!-- 싱딘 메뉴 end-->