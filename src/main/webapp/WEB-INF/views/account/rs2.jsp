<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타 비밀번호 찾기 결과 </title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">
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
		
		
				
        <div class="login-register-section section bg_color--5 pb-120 pb-lg-100 pb-md-80 pb-sm-60 pb-xs-50">
		<div class="container">
		<div class="row no-gutters">
        <br>
        <div class="col-lg-12">
		<div class="p-5" style="background: #fff; border: 1px solid #ddd;">  
         <div align="center">           
            <br>
            
            
                        
  <h2> 비밀번호는  ${fpw} 입니다.  </h2> <br/>
  		
  		
  		  	
  		  	
  		  
  		
 
				
		 </div>
		</div>
		</div>
		
		</div>
		</div>
		</div>
	</div>
		
		
		
		<%@ include file="../include/footer.jsp" %>

	
	
	
	
	
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
</body>
</html>