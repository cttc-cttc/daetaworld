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
										<h1>리뷰 작성</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a class="active" href="adsCompleted">완료된 공고</a></li>														
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
										
										
										
										<div class="table-responsive">
								<table class="table table-striped">
									<div class="box-body">
										<div class="form-group">
											<label>내용</label>
											<textarea name="w_comments" rows="5" 
												class="form-control">${review.w_contents}</textarea>
										</div>

									
									</div>
									
								
	
 	<form class="mb-3" name="myform" id="myform" method="post">
	<fieldset>
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="reviewStar" value="5" id="rate1"><label
			for="rate1">★</label>
		<input type="radio" name="reviewStar" value="4" id="rate2"><label
			for="rate2">★★</label>
		<input type="radio" name="reviewStar" value="3" id="rate3"><label
			for="rate3">★★★</label>
		<input type="radio" name="reviewStar" value="2" id="rate4"><label
			for="rate4">★★★★</label>
		<input type="radio" name="reviewStar" value="1" id="rate5"><label
			for="rate5">★★★★★</label>
	</fieldset>
	<div>
		<textarea class="col-auto form-control" type="text" id="reviewContents"
				  placeholder="좋은 후기평가를 남겨주시면 노예에게 큰 힘이 됩니다! 포인트 500p도 지급!!"></textarea>
	</div>
	
	
	</div>
		<div class="box-footer"> 
		<button class="btn btn-info onclick="location.href='${contextPath}/common/review/tempingreply?b_number=${temping.b_number}'">후기 작성</button>
	
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
	
	
	
	<!-- j커리 자리 -->
	<script>
	function changeQnaState(){
        var qnaState = $(':radio[name="faqrp_asesment"]:checked').val();
        var qnaAnswer = $("#faqrp_asesment_content").val();
        
        if(qnaState == ""){
            alert("처리상태를 선택해주세요.");
            return false;
        }
        if(qnaAnswer==""){
            alert("답변 내용을 입력해주세요.");
            return false;
        }
        
        var submitObj = new Object();
        submitObj.faq_idx = "${searchVO.faq_idx }";
        submitObj.faqrp_asesment= qnaState;
        submitObj.faqrp_asesment_content= qnaAnswer; 
        
        $.ajax({ 
                url: path+"/onlinecounsel/csfaq/update_qnaState.do", 
                type: "POST", 
                contentType: "application/json;charset=UTF-8",
                data:JSON.stringify(submitObj),
                dataType : "json",
                async: false
               }) 
               .done(function(resMap) {
                  alert("등록 완료하였습니다.");
                  location.reload();
               }) 
               .fail(function(e) {  
                   alert("등록에 실패하였습니다.");
                  
               }) 
               .always(function() { 
                  
               }); 
} 

	</script>
	
</body>

</html>