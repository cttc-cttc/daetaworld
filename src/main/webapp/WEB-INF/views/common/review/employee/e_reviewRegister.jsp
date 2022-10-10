<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>리뷰 작성</title>
<%@ include file="../../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">	
<style>
.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 2.25rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}
.star-ratings-fill {
  color: #fff58c;
  padding: 0;
  position: absolute;
  z-index: 1;
  display: flex;
  top: 0;
  left: 0;
  overflow: hidden;
  -webkit-text-fill-color: gold;
}
 
.star-ratings-base {
  z-index: 0;
  padding: 0;
}

</style>




<body class="template-color-1">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="black-logo-version header-sticky sticky-white d-none d-lg-block">
			<%@ include file="../../../include/header.jsp"%>
			
		</header>
		<!-- 상단 메뉴 end-->
		<hr class="header-hr">
		<!-- Dashboard Content Section Start -->
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<%@ include file="../../../include/dashBoard.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>구직자 리뷰 작성</h1>
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
								
									</div>
							
			<form name="form" action="e_reviewRegister" method="post">						
									
				<div class="star-rating space-x-4 mx-auto">
					<input type="radio" id="5-stars" name="w_rate" value="5" v-model="ratings"/>
					<label for="5-stars" class="star pr-4">★</label>
					<input type="radio" id="4-stars" name="w_rate" value="4" v-model="ratings"/>
					<label for="4-stars" class="star">★</label>
					<input type="radio" id="3-stars" name="w_rate" value="3" v-model="ratings"/>
					<label for="3-stars" class="star">★</label>
					<input type="radio" id="2-stars" name="w_rate" value="2" v-model="ratings"/>
					<label for="2-stars" class="star">★</label>
					<input type="radio" id="1-star" name="w_rate" value="1" v-model="ratings" />
					<label for="1-star" class="star">★</label>
				</div>				
			
				<div>
					<textarea class="col-auto form-control" type="text" id="w_comments" name="w_comments" placeholder="좋은 후기평가를 남겨주시면 사장님께 큰 힘이 됩니다! 포인트 500p도 지급!!"></textarea>
				</div>
			
				<div class="box-footer"> 
					<input type="hidden" name="a_number" id="a_number" value="${a_number}">	  
					<input type="hidden" name="w_writer" id="w_writer" value="${loginInfo.m_id}">
					<input type="hidden" name="id_rated" id="id_rated" value="${id_rated}">
					<input type="hidden" name="s_name" id="s_name" value="${s_name}">
					<button type="submit" class="btn btn-info">후기 작성</button>
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
		<%@ include file="../../../include/footer.jsp"%>
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
	ratingToPercent() {
      const score = +this.restaurant.averageScore * 20;
      return score + 1.5;
 	}
	
	</script>
</body>

</html>