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
						<li><a id="myInfo_e" href="${contextPath}/employeeMapper/myInfo"><i 
								class="lnr lnr-users"></i>내 정보</a></li>
						<li><a id="pinchStatus" href="${contextPath}/employeeMapper/pinchStatus"><i 
								class="lnr lnr-thumbs-down"></i>지원 현황</a></li>
						<li><a id="pinchHistory" href="${contextPath}/employeeMapper/pinchHistory"><i 
								class="lnr lnr-thumbs-down"></i>대타 내역</a></li>
						<li><a id="pointManagement_e" href="${contextPath}/pointMapper/pointManagement"><i 
								class="lnr lnr-thumbs-down"></i>포인트</a></li>
					</ul>
				</li>
				</c:if>
				<c:if test="${loginType == 2 }">
				<li>
					<h3>마이페이지 (사장님)</h3>
					<ul>
						<li><a id="myInfo_r" href="${contextPath}/employer/myInfo"><i 
								class="lnr lnr-users"></i>내 정보</a></li>
						<li><a id="shopManagement" href="${contextPath}/employer/shopManagement"><i 
								class="lnr lnr-thumbs-down"></i>가게 관리</a></li>
						<li><a id="candidates" href="${contextPath}/employer/candidates"><i 
								class="lnr lnr-thumbs-down"></i>지원자 확인</a></li>
						<li><a id="adsRegister" href="${contextPath}/employer/adsRegister"><i 
								class="lnr lnr-thumbs-down"></i>공고 등록</a></li>
						<li><a id="adsHistory" href="${contextPath}/employer/adsHistory"><i 
								class="lnr lnr-thumbs-down"></i>공고 내역</a></li>											
						<li><a id="pointManagement_r" href="${contextPath}/pointMapper/pointManagement"><i 
								class="lnr lnr-thumbs-down"></i>포인트 관리</a></li>
					</ul>
				</li>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<script>
	window.onload = function() {
		switch("${leftMenu}") {
		// 구직자
		case "resumeManagement":
			$("#resumeManagement").addClass("active");
			break;
		case "pinchStatus":
			$("#pinchStatus").addClass("active");
			break;
		case "pinchHistory":
			$("#pinchHistory").addClass("active");
			break;
		// 구인자
		case "shopManagement":
			$("#shopManagement").addClass("active");
			break;
		case "candidates":
			$("#candidates").addClass("active");
			break;
		case "adsRegister":
			$("#adsRegister").addClass("active");
			break;
		case "adsHistory":
			$("#adsHistory").addClass("active");
			break;
		// 마이페이지
		case "myInfo":
			if("${loginType}" == 1) { // 구직자
				$("#myInfo_e").addClass("active");
			} else { // 구인자
				$("#myInfo_r").addClass("active");
			}
			$("#myInfo").addClass("active");
			break;
		// 포인트
		case "pointManagement":
			if("${loginType}" == 1) { // 구직자
				$("#pointManagement_e").addClass("active");
			} else { // 구인자
				$("#pointManagement_r").addClass("active");
			}
			break;
		}
	}
</script>		