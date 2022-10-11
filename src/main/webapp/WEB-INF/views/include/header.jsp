<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- custom_css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/header.css">
<div class="main-header">
	<div class="container pl-15 pl-md-0 pr-15 pr-md-0">
		<div class="row align-items-center no-gutters">
			<!--Logo start-->
			<div class="col-xl-2 col-lg-2 col-12">
				<div class="logo">
					<a href="${contextPath }/"><img src="${contextPath}/resources/images/logo100.png" alt="오늘의대타"></a>
				</div>
			</div>
			<!--Logo end-->
			<!--Menu start-->
			<div class="col-xl-7 col-lg-7 col-12">
				<nav class="main-menu padding-16">
					<ul class="menu-ul">
						<li><a href="${contextPath }/jobAds/listAll">일반구인</a></li>
						<li><a href="${contextPath }/jobAds/listUrgency">긴급구인</a></li>
						<li><a href="${contextPath }/jobAds/listRecommendation">직업추천</a></li>
						<li><a href="${contextPath }/jobAds/listCountry">농어촌</a></li>
						<li><a href="${contextPath }/ranking">랭킹</a></li>
						<li><a>게시판<small class="icon-arrow"></small></a>
							<ul class="sub-menu">
								<li><a href="${contextPath }/board/free/free">자유게시판</a></li>
								<li><a href="${contextPath }/board/temping/temping">땜빵게시판</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			<!--Menu end-->
			<!-- //로그인메뉴 -->
			<div class="col-xl-3 col-lg-3 col-12">
				<!-- 로그인 유저 없음 -->
				<c:if test="${loginInfo == null }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<div class="jp-author item">
								<a href="${contextPath}/login"><i class="lnr lnr-user"></i><span>로그인</span></a>
							</div>
							<div class="jp-author-action-two item">
								<a class="ht-btn header-btn" href="${contextPath}/joinRore">회원가입</a>
							</div>
						</div>
					</div>
				</c:if>
				<!-- //로그인 유저 있음 -->
				<c:if test="${loginInfo != null }">
					<div class="header-btn-action d-flex justify-content-end">
						<div class="btn-action-wrap d-flex">
							<!-- //알림 토글 --> 
							<div class="jp-author item">
								<div class="dropdown notifications-menu">
									<a id="alarm" data-toggle="dropdown" aria-expanded="false"></a>
									<div id="notification-area" class="dropdown-menu" aria-labelledby="alarm"></div>
								</div>
							</div>
							<!-- 알림 토글// --> 
							<!-- //유저메뉴 토글 -->
							<div class="jp-author item usermenu-width">
								<div class="usermenu-content" data-toggle="dropdown" aria-expanded="false">
									<div class="rounded-circle profile-container">
										<c:if test="${loginM_picture == 'default'}">
											<img src="${contextPath}/resources/images/default_profile.png">
										</c:if>
										<c:if test="${loginM_picture != 'default'}">
											<img src="${contextPath}/displayProfile?fileName=${loginM_picture}">
										</c:if>
									</div>
									<a id="userMenu">
										&nbsp;<span class="user-hover">${loginInfo.m_nick }님!!</span>
									</a>
								</div>
								<div class="dropdown-menu" aria-labelledby="userMenu">
									<!-- 관리자 -->
									<c:if test="${loginInfo.m_type == 0 }">
										<a class="dropdown-item drdn-item" href="${contextPath }/admin/employee_list?page=1">관리자 화면</a>
									</c:if>
									<!-- 구직자 -->
									<c:if test="${loginInfo.m_type == 1 }">
										<a class="dropdown-item drdn-item" href="${contextPath}/pointMapper/pointManagement?m_id=${loginInfo.m_id}">포인트 점수 : <span>${loginInfo.point }</span>점</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/myInfo?m_id=${loginInfo.m_id}">마이페이지</a>
										<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/resumeManagement?m_id=${loginInfo.m_id}">자기소개서</a>
										<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/pinchStatus?m_id=${loginInfo.m_id}">지원내역</a>
									</c:if>
									<!-- 구인자 -->
									<c:if test="${loginInfo.m_type == 2 }">
										<a class="dropdown-item drdn-item" href="${contextPath}/pointMapper/pointManagement?m_id=${loginInfo.m_id}">포인트 점수 : <span>${loginInfo.point }</span>점</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item drdn-item" href="${contextPath}/employerMapper/myInfo?m_id=${loginInfo.m_id}">마이페이지</a>
										<a class="dropdown-item drdn-item" href="${contextPath}/employerMapper/adsRegister?m_id=${loginInfo.m_id}">공고 등록</a>
										<a class="dropdown-item drdn-item" href="${contextPath}/employerMapper/adsApplied?m_id=${loginInfo.m_id}">지원자 확인</a>
										<a class="dropdown-item drdn-item" href="${contextPath}/reviewMapper/r_adsCompleted?m_id=${loginInfo.m_id}">후기 작성</a>
									</c:if>
								</div>
							</div>
							<!-- 유저메뉴 토글// -->
							<div class="jp-author-action-two item logout-width">
								<a href="javascript:logout()"><span>로그아웃</span></a>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 로그인 유저 있음// -->
			</div>
			<!-- 로그인메뉴// -->
		</div>
	</div>
</div>
<script>
	window.addEventListener('load', function() {
		if('${loginInfo}' != '') {
			notificationCnt();
			notificationList();
		}
	});
	
	// 페이지 로드 시 로그인 유저의 알림목록을 가져옴
	function notificationList() {
		$.ajax({
			url: '${contextPath}/notificationList',
			data: {'m_id': '${loginInfo.m_id}'},
			dataType: 'json',
			type: 'get',
			success: function(res) {
				displayNotification(res);
			},
			error: function(res) {
				console.log('실패');
				console.log(res);
			}
		});
	}
	// 알림목록 화면 표시
	function displayNotification(notification) {
		if(notification.length == 0) {
			let htmls = `
				<a class="dropdown-item drdn-item" style="cursor: context-menu; background: #fff">알림이 없습니다.</a>
			`;
			$('#notification-area').html(htmls);
			
		} else {
			let htmls = '';
			Array.from(notification).forEach(noti => {
				
				switch(noti.n_type) {
				// 구인자 알림
				case 1:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/employerMapper/adsApplied?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name+' 지원신청 1건</a>';
					break;
				case 2:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/employerMapper/adsRequested?m_id='+ noti.m_id +'&pageType=noti">주변노예 요청 결과 : '+ (noti.ja_status == 'y' ? '수락' : '거절') +'</a>';
					break;
				case 3:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/reviewMapper/r_writtenReviews?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name +' 후기 작성됨</a>';
					break;
				case 4:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/reviewMapper/r_wroteReviews?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name +' 후기 댓글 작성됨</a>';
					break;
					
				// 구직자 알림
				case 6:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/requests?m_id='+ noti.m_id +'&pageType=noti">주변노예 요청 1건</a>';
					break;
				case 7:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/employeeMapper/pinchStatus?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name +' 공고지원 결과 : '+ (noti.ja_status == 'y' ? '수락' : '거절') +'</a>';
					break;
				case 8:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/reviewMapper/e_writtenReviews?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name +' 후기 작성됨</a>';
					break;
				case 9:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/reviewMapper/e_wroteReviews?m_id='+ noti.m_id +'&pageType=noti">'+ noti.s_name +' 후기 댓글 작성됨</a>';
					break;
				
				// 구인자 & 구직자 공통알림
				case 10:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/deletePart?m_id='+ noti.m_id +'">'+ noti.r_kind +' 신고 1회, 사유: '+ noti.r_type;
					htmls += '<span class="tooltip-text"><i class="lnr lnr-warning" style="-webkit-text-fill-color: #ffb100;"></i>경고 3회 누적 시 사이트 이용이 제한됩니다.<br>글 작성 시 주의하세요.</span></a>';
					break;
					
				// 관리자 알림
				case 11:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/admin/free_board?page=1&pageType=noti">자유게시판 '+ noti.b_number +'번 글 신고됨</a>';
					break;
				case 12:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/admin/free_comments?page=1&pageType=noti">자유게시판 '+ noti.c_number +'번 댓글 신고됨</a>';
					break;
				case 13:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/admin/temping_board?page=1&pageType=noti">땜빵게시판 '+ noti.b_number +'번 글 신고됨</a>';
					break;
				case 14:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/admin/temping_comments?page=1&pageType=noti">땜빵게시판 '+ noti.c_number +'번 댓글 신고됨</a>';
					break;
				case 15:
					htmls += '<a class="dropdown-item drdn-item" href="${contextPath}/admin/job_ads?page=1&pageType=noti">구인공고 '+ noti.a_number +'번 글 신고됨</a>';
				}
			});
			htmls += `
				<div class="dropdown-divider"></div>
				<a class="dropdown-item drdn-item last" href="javascript:deleteAll()"><i class="lnr lnr-trash"></i>모든 알림 삭제</a>
			`;
			
			$('#notification-area').html(htmls);
		}
	}
	
	// 알림목록 수
	function notificationCnt() {
		$.ajax({
			url: '${contextPath}/notificationCnt',
			data: {'m_id': '${loginInfo.m_id}'},
			dataType: 'json',
			type: 'get',
			success: function(res) {
				displayNotificationCnt(res);
			},
			error: function() {
				console.log('실패');
			}
		});
	}
	// 알림목록 수 화면 표시
	function displayNotificationCnt(notiCnt) {
		if(notiCnt == 0) {
			$('#alarm').html('<i class="lnr lnr-alarm alarm-hover"></i>');
		} else {
			let htmls = 
				'<i class="lnr lnr-alarm alarm-hover"></i>'+
				'<span class="label-alarm">'+ notiCnt +'</span>';
			$('#alarm').html(htmls);
		}
	}
	
	// 알림목록 전체 삭제
	function deleteAll() {
		$.ajax({
			url: '${contextPath}/deleteAll',
			data: {'m_id': '${loginInfo.m_id}'},
			dataType: 'json',
			type: 'get',
			success: function() {
				notificationCnt();
				notificationList();
			},
			error: function() {
				console.log('실패');
			}
		});
	}
</script>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"
  integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script type="text/javascript">
	function logout() {
		switch('${loginInfo.login_type}') {
			case 'naver': naverLogout();
				break;
			case 'kakao': kakaoLogout();
				break;
			default: location.href = '${contextPath}/logout';
		}
	}
	
	function naverLogout() {
		var naverLogin = new naver.LoginWithNaverId({
			clientId: 'eiV54Jtq4SI3YzMlgZcF',
			callbackUrl: 'http://localhost:8088/deataworld/naverCallback',
			isPopup: false,
			callbackHandle: true,
		});
		naverLogin.init();
		
		// 네이버 로그인 중인 상태이면
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				// 먼저 네이버 로그아웃 하고
				location.href = 'https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fwww.naver.com';
			}
			// 오늘의대타 로그아웃
			location.href = '${contextPath}/logout';
		});
	}
	
	function kakaoLogout() {
		Kakao.init('d6140eb0f3d4e274049880e659b9d48b');
		Kakao.Auth.logout()
		  .then(function(response) {
		    console.log(Kakao.Auth.getAccessToken()); // null (카카오 토큰 삭제)
		    // 카카오 로그아웃
		    let uri = 'https://kauth.kakao.com/oauth/logout';
		    uri += '?client_id=26552c91407061c52cc3a6bb50b32ae9';
		    uri += '&logout_redirect_uri=http://localhost:8088/deataworld/';
		    location.href = uri;
		    
		  })
		  .catch(function(error) {
		    console.log('Not logged in.');
		  });
		// 오늘의대타 로그아웃
		location.href = '${contextPath}/logout';
	}
</script>