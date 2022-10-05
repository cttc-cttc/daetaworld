<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">

<script type="text/javascript">



	var msg = "${msg}";
		 
		if (msg != "") {
			alert(msg);
		}


</script>

<body class="template-color-3">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
		</header>
		
		<!-- 상단 여백 Section Start -->
		<div class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb"></ul>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 상단 여백 Section end -->
		
		<!-- Login Register Section Start -->
		<div class="login-register-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
			<div class="container">
				<div class="row no-gutters">
					
					<div class="col-lg-12">
						<div class="login-instruction" style="border: 1px solid #ddd;">
							<div class="login-register-form-area">
								<div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
                                        <p class="mb-4">아이디와 이메일을 입력해주세요!</p>
                                    </div>
                                    
                                    <form class="user" method="post">
                                       <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="m_id" aria-describedby="IdHelp" name="m_id"
                                                placeholder="아이디를 입력해 주세요">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="m_email" aria-describedby="emailHelp" name="m_email"
                                                placeholder="이메일을 입력해 주세요">
                                        </div>
                                         
                                        <button type="submit" class="ht-btn">
                                            비밀번호 찾기
                                        </button>
                                    </form>
                                    
								</div>
							
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login Register Section End -->
		
		<%@ include file="../include/footer.jsp" %>
	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
</body>
</html>