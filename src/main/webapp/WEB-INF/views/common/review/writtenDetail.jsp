<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>리뷰 작성</title>
<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">
<style>
	.star {
		font-size: 2rem;
		padding: 0 0.2em;
		line-height: 1rem;
		-webkit-text-stroke-width: 2.3px;
		-webkit-text-stroke-color: #2b2a29;
		-webkit-text-fill-color: gold;
	}
</style>
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
										<h1>작성된 리뷰 확인</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
											
											<c:if test="${loginInfo.m_type == 1 }">
												<ul class="nav">
													<li><a href="${contextPath }/employeeMapper/pinchExpired?m_id=${loginInfo.m_id }">
														완료된 공고</a></li>											
													<li><a href="e_wroteReviews?m_id=${loginInfo.m_id }">
														내가 작성한 후기</a></li>											
													<li><a class="active" href="e_writtenReviews?m_id=${loginInfo.m_id }">
														나를 평가한 후기</a></li>											
												</ul>
											</c:if>
											<c:if test="${loginInfo.m_type == 2 }">
												<ul class="nav">
													<li><a href="r_adsCompleted?m_id=${loginInfo.m_id }">
														완료된 공고</a></li>
													<li><a href="r_wroteReviews?m_id=${loginInfo.m_id }">
														후기 작성한 공고</a></li>
													<li><a class="active" href="r_writtenReviews?m_id=${loginInfo.m_id }">
														후기 	작성된 공고</a></li>
												</ul>
											</c:if>	
												
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form id="rr" action="replyRegister" method="post" onsubmit="return valChk()">
													<div class="row mb-30">
														<div class="col-lg-10">
															<div class="row">																															
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<!-- Single Input Start -->
																	<div class="single-input mb-25">
																		<label for="w_rate">별점<span> : </span></label>																		
																		<c:set var="w_rate" value="${detail.w_rate}"></c:set>
																		<c:if test="${w_rate == 5.0}">
																			<span class="star"><c:out value="★★★★★"/></span>
																		</c:if>
																		<c:if test="${w_rate == 4.0}">
																			<span class="star"><c:out value="★★★★"/></span>
																		</c:if>
																		<c:if test="${w_rate == 3.0}">
																			<span class="star"><c:out value="★★★"/></span>
																		</c:if>
																		<c:if test="${w_rate == 2.0}">
																			<span class="star"><c:out value="★★"/></span>
																		</c:if>
																		<c:if test="${w_rate == 1.0}">
																			<span class="star"><c:out value="★"/></span>
																		</c:if>
																		<br>
																		<label for="rc_comments">후기<span>*</span></label>
																		<textarea class="col-auto form-control" type="text" readonly="readonly">
																			${detail.w_comments }
																		</textarea>
																	</div>
																	<!-- Single Input End -->
																</div>		
																
																<c:if test="${detail.rc_number eq null}">	
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	
																	<div class="single-input mb-25">	
																		<label for="asdf">후기의 댓글을 작성해주세요<span>  </span></label>	
																		<br>																
																		<label for="rc_comment">댓글<span>*</span></label>
																		<textarea class="col-auto form-control" 
																			id="rc_comment" name="rc_comment" placeholder="댓글을 써보세요"></textarea>
																	</div>
																	
																	<input type="hidden" id="w_number" name="w_number" value="${detail.w_number}">
																	<input type="hidden" id="m_id" name="m_id" value="${detail.id_rated }">

																			<div class="row">
																				<div class="col-12">
																					<div
																						class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																						<button type="submit"
																							class="ht-btn theme-btn theme-btn-two mb-xs-20">
																							등록</button>
																					</div>
																				</div>
																			</div>
																		</div>														
																
																</c:if>
																
																<c:if test="${detail.rc_number ne null}">
																<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																	<!-- Single Input Start -->
																	<div class="single-input mb-25">	
																		<label for="asdf">후기의 댓글을 작성하셨습니다<span>  </span></label>	
																		<br>																
																		<label for="rc_comment">댓글<span>*</span></label>
																		<textarea class="col-auto form-control" readonly>
																		${detail.rc_comment }
																		</textarea>
																	</div>
																	<!-- Single Input End -->
																</div>
																
																</c:if>
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
	function valChk(){
		if(rr.rc_comment.value == "" || rr.rc_comment.value == " "){
			alert('댓글 입력을 안하셨습니다');
			rr.rc_comment.focus();
			return false;
		}
		alert("댓글이 등록되었습니다.");
		return true;
	}
	</script>
	

</body>

</html>