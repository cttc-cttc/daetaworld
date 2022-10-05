<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>관리자 페이지</title>
<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<body class="template-color-1">
	<div id="main-wrapper">
		<!--Header section start-->
		<header class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../include/header.jsp" %>
		</header>
		<!--Header section end-->
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
										<h1>${title }</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="${contextPath }/admin/user_profile?id=${pointInfo.m_id}">기본정보</a></li>
													<li><a class="active" href="${contextPath }/admin/user_point?id=${pointInfo.m_id}">포인트정보</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<!-- //포인트정보 -->
													<div class="row mb-30">
														<div class="col-lg-2">
															<div class="profile-avatar mb-30">																					
																<label class="d-block font-bold">포인트 점수</label>
																<div class="point-text">																		
																	<span class="theme-color">&nbsp;${point.point }</span>
																</div>
															</div>
														</div>
														<div class="col-lg-10">
															<div class="row">
																<!-- //적립 포인트 테이블 -->
																<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label class="font-bold">적립 포인트 내역</label>
																		<div class="container faq-wrapper padding-zero">
																			<div class="row">
																				<div class="col-12">
																					<div class="cart-table table-responsive mb-30" id="epArea"></div>
																					<ul class="page-pagination justify-content-center" id="epPageNavi"></ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 적립 포인트 테이블// -->
																<!-- //차감 포인트 테이블 -->
																<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
																	<div class="single-input mb-25">
																		<label class="font-bold">차감 포인트 내역</label>
																		<div class="container faq-wrapper padding-zero">
																			<div class="row">
																				<div class="col-12">
																					<div class="cart-table table-responsive mb-30" id="dpArea"></div>
																					<ul class="page-pagination justify-content-center" id="dpPageNavi"></ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 차감 포인트 테이블// -->
															</div>
														</div>
													</div>
													<!-- 포인트정보// -->
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
		
		<%@ include file="../include/footer.jsp" %>
	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
	<script>
		window.addEventListener('load', function() {
			const epAreaTable = `
				<table class="table">
					<thead>
						<tr>
							<th class="pro-price">적립 포인트</th>
							<th class="pro-title">적립 날짜</th>
						</tr>
					</thead>
					<tbody id="earned-point-area"></tbody>
				</table>
			`;
			$('#epArea').append(epAreaTable);
			
			const dpAreaTable = `
				<table class="table">
					<thead>
						<tr>
							<th class="pro-price">차감 포인트</th>
							<th class="pro-title">차감 날짜</th>
						</tr>
					</thead>
					<tbody id="deducted-point-area"></tbody>
				</table>
			`;
			$('#dpArea').append(dpAreaTable);
			
			// 페이지 첫 로드 시 각각 1페이지로 출력
			earnedPoint(1);
			deductedPoint(1);
		});
		
//		적립 포인트 페이지 처리
		function earnedPoint(page) {
			$.ajax({
				url: '${contextPath}/pointMapper/pEarnedAjax',
				data: {
					'm_id': '${pointInfo.m_id}',
					'page': page
				},
				dataType: 'json',
				type: 'get',
				success: function(res) {
					// 적립 포인트가 없으면 메시지 표시
					if(typeof res.emptyMsg != 'undefined') {
						$('#epArea').html('<p style="margin-top: 1rem;">'+ res.emptyMsg +'</p>');
						
					// 적립 포인트가 있으면 목록 표시
					} else {
						pointList(res.earnedPointList, 'e', 'earned-point-area');
						pageNavi(res.pp, res.pageRange, res.lastPage, 'earnedPoint', 'epPageNavi');
					}
				},
				error: function(res) {
					console.log('적립포인트내역 실패');
				}
			});
		}
		
//		차감 포인트 페이지 처리
		function deductedPoint(page) {
			$.ajax({
				url: '${contextPath}/pointMapper/pDeductedAjax',
				data: {
					'm_id': '${pointInfo.m_id}',
					'page': page
				},
				dataType: 'json',
				type: 'get',
				success: function(res) {
					// 차감 포인트가 없으면 메시지 표시
					if(typeof res.emptyMsg != 'undefined') {
						$('#dpArea').html('<p style="margin-top: 1rem;">'+ res.emptyMsg +'</p>');
						
					// 차감 포인트가 있으면 목록 표시
					} else {
						pointList(res.deductedPointList, 'd', 'deducted-point-area');
						pageNavi(res.pp, res.pageRange, res.lastPage, 'deductedPoint', 'dpPageNavi');
					}
				},
				error: function(res) {
					console.log('차감포인트내역 실패');
				}
			});
		}
		
//		적립/차감 포인트 내역 출력
		function pointList(pList, pType, listAreaId) {
			let htmls = '';
			
			Array.from(pList).forEach(point => {
				htmls +=
				'<tr>'+
					'<td class="pro-price"><span>'+ (pType == 'e' ? '+'+ point.e_point : '-'+ point.d_point) +'</span></td>'+
					'<td class="pro-price"><span>'+ (pType == 'e' ? point.e_date : point.d_date) +'</span></td>'+
				'</tr>';
			});
			
			$('#'+ listAreaId).html(htmls);
		}
		
//		적립/차감 포인트 페이지 네비게이터 출력
		function pageNavi(pp, pageRange, lastPage, ajaxMethod, pageNaviId) {
			let htmls = '';
			
			// 이전 버튼 활성/비활성
			if(pp.currPage != 1) {
				htmls += '<li><a href="javascript:'+ ajaxMethod +'('+ Number(pp.currPage-1) +')"><i class="fa fa-angle-left"></i></a></li>';
			} else {
				htmls += '<li><a class="disabled-btn"><i class="fa fa-angle-left"></i></a></li>';
			}
			// 페이지 버튼 활성/비활성
			Array.from(pageRange).forEach(pageNaviNum => {
				if(pageNaviNum == pp.currPage) {
					htmls += '<li class="active"><a class="current-btn">'+ pageNaviNum +'</a></li>';
				} else {
					htmls += '<li><a href="javascript:'+ ajaxMethod +'('+ pageNaviNum +')">'+ pageNaviNum +'</a></li>';
				}
			});
			// 다음 버튼 활성/비활성
			if(pp.currPage != lastPage) {
				htmls += '<li><a href="javascript:'+ ajaxMethod +'('+ Number(pp.currPage+1) +')"><i class="fa fa-angle-right"></i></a></li>';
			} else {
				htmls += '<li><a class="disabled-btn"><i class="fa fa-angle-right"></i></a></li>';
			}
			
			$('#'+ pageNaviId).html(htmls);
		}
	</script>
</body>
</html>