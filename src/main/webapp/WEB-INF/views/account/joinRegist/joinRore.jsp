<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/account/moncss1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/account/moncss2.css">

<body class="template-color-3">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../../include/header.jsp" %>
		</header>

			<div id="container" class="join-select-container">
			    <div class="join-group">
			       
			        <br><br><br><br><br><br><br><br> 
			
			        <div class="select-join-group">
			            <div class="member-item" style="background-color: #fafcff;">
			                <div class="personal-member">
			                <br><br><br><br>
			                    <p class="title">이력서를 등록하고<br>오늘의 일자리를 찾아보세요.</p>
			                    <br>
			                    <button type="button" class="orange" value="write-e" onclick="write_e()">개인회원가입</button>
			                </div>
			            </div>
			
			            <div class="member-item" style="background-color: #fafcff;">
			                <div class="company-member">
							<br><br><br><br>
			                    <p class="title">공고를 등록하고<br>오늘의 대타를 찾아보세요.</p>
			                    <br>
			                    <button type="button" class="navy" value="write-r" onclick="write_r()">사업체회원가입</button>
			                    <p class="notice">※ 대타가 필요하신 개인사업자, 사업체직원 포함</p>
			                </div>
			            </div>
			        </div>
			
			        <br><br><br>
			        <p style="font-size: 17px; color: #777; margin-bottom: 1rem;">공유하기</p>
			        <%@ include file="../../include/account/share_btns.jsp" %><!-- SNS 공유 버튼들 -->
				</div>
			</div>
			
		<!-- footer -->
		<%@ include file="../../include/footer.jsp" %>

	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../../include/plugin.jsp" %>   
	<script>
		function write_e() {
			location.href = 'write-e';
		}
		
		function write_r() {
			location.href = 'write-r';
		}
	</script>
	
</body>
</html>
