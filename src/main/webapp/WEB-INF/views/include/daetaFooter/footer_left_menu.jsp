<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-xl-2 col-lg-3">
	<div class="dashboard-sidebar">
		<div class="dashboard-menu">
			<ul class="nav">
				<li>
					<h3>오늘의대타</h3>
					<ul>
						<li><a id="introCom" href="${contextPath}/daetaFooter/introCom"><i class="lnr lnr-users"></i>회사소개</a></li>
						<li><a id="terms" href="${contextPath}/daetaFooter/terms"><i class="lnr lnr-user"></i>이용약관</a></li>
						<li><a id="psPoli" href="${contextPath}/daetaFooter/psPoli"><i class="lnr lnr-thumbs-up"></i>개인정보처리방침</a></li>
					</ul>
				</li>
				<li>
					<h3>고객지원</h3>
					<ul>
						<li><a id="userGuide" href="${contextPath}/daetaFooter/userGuide"><i class="lnr lnr-briefcase"></i>이용가이드</a></li>
						<li><a id="oftenFAQ" href="${contextPath}/daetaFooter/oftenFAQ"><i class="lnr lnr-file-empty"></i>자주 묻는 질문(FAQ)</a></li>
						<li><a id="emailFAQ" href="${contextPath}/daetaFooter/emailFAQ"><i class="lnr lnr-pencil"></i>이메일 문의</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<script>
	window.addEventListener('load', function() {
		switch("${leftMenu}") {
			case "introCom":
				$("#introCom").addClass("active");
				break;
			case "terms":
				$("#terms").addClass("active");
				break;
			case "psPoli":
				$("#psPoli").addClass("active");
				break;
			case "userGuide":
				$("#userGuide").addClass("active");
				break;
			case "oftenFAQ":
				$("#oftenFAQ").addClass("active");
				break;
			case "emailFAQ":
				$("#emailFAQ").addClass("active");
				break;
		}
	});
</script>