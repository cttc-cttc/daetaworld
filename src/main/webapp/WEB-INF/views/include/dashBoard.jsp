<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${contextPath}/resources/custom_css/dashBoard.css">

					<div class="col-xl-2 col-lg-3">
						<div class="dashboard-sidebar">
							<div class="dashboard-menu">
								<ul class="nav">
									<c:if test="${loginType == 1 }">
									<li>
										<h3>마이페이지 (노예)</h3>
										<ul>
											<li><a href="${contextPath}/employee/myInfo"><i 
													class="lnr lnr-users"></i>내 정보</a></li>
											<li><a href="${contextPath}/employee/resumeManagement"><i 
													class="lnr lnr-thumbs-down"></i>자기소개서 관리</a></li>												
											<li><a href="${contextPath}/employee/pinchStatus"><i 
													class="lnr lnr-thumbs-down"></i>지원 현황</a></li>
											<li><a href="${contextPath}/employee/pinchHistory"><i 
													class="lnr lnr-thumbs-down"></i>대타 내역</a></li>
											<li><a href="${contextPath}/point/pointManagement"><i 
													class="lnr lnr-thumbs-down"></i>포인트</a></li>
										</ul>
									</li>
									</c:if>
									<c:if test="${loginType == 2 }">
									<li>
										<h3>마이페이지 (사장님)</h3>
										<ul>
											<li><a href="${contextPath}/employer/myInfo"><i 
													class="lnr lnr-users"></i>내 정보</a></li>
											<li><a href="${contextPath}/employer/shopManagement"><i 
													class="lnr lnr-thumbs-down"></i>가게 관리</a></li>
											<li><a href="${contextPath}/employer/candidates"><i 
													class="lnr lnr-thumbs-down"></i>지원자 확인</a></li>
											<li><a href="${contextPath}/employer/adsRegister"><i 
													class="lnr lnr-thumbs-down"></i>공고 등록</a></li>
											<li><a href="${contextPath}/employer/adsHistory"><i 
													class="lnr lnr-thumbs-down"></i>공고 내역</a></li>											
											<li><a href="${contextPath}/point/pointManagement"><i 
													class="lnr lnr-thumbs-down"></i>포인트 관리</a></li>
										</ul>
									</li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>					