<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>공고 세부정보</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />		
<link rel="stylesheet"
	href="${contextPath }/resources/custom_css/etc.css">
	
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
										<h1>${detail.s_name }</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="adsRegister?m_id=${loginInfo.m_id}">공고 등록</a></li>
													<li><a href="countryRegister?m_id=${loginInfo.m_id}">농어촌 등록</a></li>
													<li><a class="active" href="checkEmployees?m_id=${loginInfo.m_id}">주변 노예 확인</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form action="#">
														<div class="row mb-30">
															<div class="col-lg-2">
																<div class="profile-avatar mb-30">																					
																	<label class="d-block" for="m_picture">지원자 면상<span>*</span></label>
																	<c:if test="${detail.m_picture == 'default'}">
																		<img src="${contextPath}/resources/images/default_profile.png">																																																			
																	</c:if>
																	<c:if test="${detail.m_picture != 'default'}">
																		<img src="${contextPath}/displayProfile?fileName=${detail.m_picture}">																																																			
																	</c:if>
																</div>
															</div>
															<div class="col-lg-10">
																<div class="row">
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_name">이름 <span>*</span></label>																			
																				<input type="text" id="m_name" name="m_name"
																						value="${detail.m_name }" readonly="readonly"> 
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_age">나이<span>*</span></label>
																				<input type="text" id="m_age" name="m_age" 
																					value="${detail.m_age }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_gender">성별<span>*</span></label>
																				<input type="text" id="m_gender" name="m_gender" 
																					value="${detail.m_gender }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_address1">거주지<span>*</span></label>
																				<input type="text" id="m_address1" name="m_address1" 
																					value="${detail.m_address1 }" readonly="readonly">
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_intro">자기소개서<span>*</span></label>
																			<table>
																			<tr>
																				<td style="width: 100%;">
																					<input type="text" id="i_title" name="i_title" 
																					value="${detail.i_title }" readonly="readonly"
																					></td>
																				<td>
																					<%-- <input type="button" id="modal_btn" value="보기">
																					<div class="black_bg"></div>
																					<div class="modal_wrap">																							    
																						<div class="modal_close">
																							<a href="#">close</a></div>																							    
																						<div>${detail.i_contents }</div>
																					</div> --%>
																					
																					<!-- 자소서 modal -->
																					<input type="button" value="보기" class="single-input" data-toggle="modal" data-target="#contents">
																					
																					<!-- Modal -->
																					<div class="modal fade" id="contents" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
																					  <div class="modal-dialog modal-dialog-centered" role="document">
																					    <div class="modal-content">
																					      <div class="modal-header">
																					        <h5 class="modal-title" id="exampleModalLabel">자기소개서</h5>
																					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
																					          <span aria-hidden="true">&times;</span>
																					        </button>
																					      </div>
																					      <div class="modal-body" style="height: 500px;">
																					      ${detail.i_contents }
																					      </div>
																					      <div class="modal-footer">
																					        <button type="button" class="btn btn-outline-success" data-dismiss="modal">확인</button>
																					      </div>
																					    </div>
																					  </div>
																					</div>
																				</td>																																										
																			</tr>																			
																			</table>
																																					
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="m_phone">전화번호<span>*</span></label>
																				<div>
																				<c:if test="${detail.m_terms1 == 0 }">
																					<c:out value="이 회원은 전화번호 공개에 동의하지 않았습니다."></c:out>
																				</c:if>		
																				<c:if test="${detail.m_terms1 == 1 }">
																					<c:out value="${detail.m_phone }"></c:out>
																				</c:if>
																				</div>																				
																		</div>
																		<!-- Single Input End -->
																	</div>												
																	
																	<input type="hidden" id="a_number" name="a_number" value="${detail.a_number }">																																	
																	<input type="hidden" id="m_id" name="m_id" value="${detail.m_id }">																																	
																	<input type="hidden" id="i_number" name="i_number" value="${detail.i_number }">																																	
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-12">
																<div
																	class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button type="button" id="applyRequest" name="applyRequest" onclick="request()"
																		class="ht-btn theme-btn theme-btn-two mb-xs-20">
																	요청
																	</button>
																	<button type="button" class="ht-btn theme-btn theme-btn-two transparent-btn-two"
																		onclick="location.href='${contextPath}/employerMapper/nearCandidates?a_number=${detail.a_number}&address=${detail.m_address1 }'">
																		목록보기</button>
																</div>
															</div>
														</div>														
													</form>										
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
	<%@ include file="../../include/plugin.jsp"%>
	
	<script type="text/javascript">	 	
		window.onload = function() {
			function onClick() {
				document.querySelector('.modal_wrap').style.display = 'block';
				document.querySelector('.black_bg').style.display = 'block';
			}
			function offClick() {
				document.querySelector('.modal_wrap').style.display = 'none';
				document.querySelector('.black_bg').style.display = 'none';
			}
			document.getElementById('modal_btn').addEventListener('click',
					onClick);
			document.querySelector('.modal_close').addEventListener('click',
					offClick);
		};
	</script>
	
	<script type="text/javascript">
		function request(){
			if('${detailCnt}' != 0) {
				alert('이미 요청한 노예입니다.');
				return;
			}
			
			$.ajax({
				url : "${contextPath}/employerMapper/applyRequest",
				data : {					
					"a_number" : $("#a_number").val(),
					"m_id" : $("#m_id").val(),
					"i_number" : $("#i_number").val()
					},
				dataType : 'json',
				type : 'POST',
				success : function(result){
					console.log(result);					
					alert('요청하였습니다. 노예의 결정을 기다리세요');	
					location.href = '${contextPath}/employerMapper/adsRequested?m_id=${loginInfo.m_id}';
				},
				error : function(result){
					console.log(result);
					alert('요청을 실패했네요 ㅋ');
				}				
			});				
			
		}
	</script>
</body>
</html>