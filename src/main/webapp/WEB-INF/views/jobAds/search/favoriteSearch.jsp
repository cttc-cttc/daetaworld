<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>



<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/index.css">



<body class="template-color-3">
	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../../include/header.jsp"%>
		</header>
		<!-- 상단 메뉴 end-->

		<br>
		<br>
		<br>
		<br>
		<br>
		<br> <br> <br> <br>
		<!-- 목록보기 -->


		<div class="container">
			<!-- 로그인양식 -->

			<!-- 로그인양식끝 -->
			<section class="content">
				<div class="table-responsive">
					<table class="table table-striped">
						<colgroup>
							<col style="width: 17%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 15%;">
							<col style="width: 14%;">
							<col style="width: 15%;">
							<col style="width: 17%;">
						</colgroup>
						
						<thead>

							<tr>
								<th>가게번호</th>
								<th>날짜</th>
								<th>시간</th>
								<th>시급</th>
								<th>급구</th>
								<th>상태</th>
								<th>올린시간</th>

							</tr>
						</thead>
						<c:forEach var="jobsend" items="${list }">
							<tr>
								<td class="tc"><a
									href="listFavoriteDetail?s_number=${jobsend.s_number}&m_id=${loginInfo.m_id}&a_number=${jobsend.a_number}">
										${jobsend.s_number}</a></td>
									
								<td class="tc">${jobsend.a_date}</td>
								<td class="tc">${jobsend.a_time}</td>
								<td class="tc">${jobsend.a_wage}</td>
								<td class="tc">${jobsend.a_urgency }</td>
								<td class="tc">${jobsend.a_status }</td>
								<td class="tc">${jobsend.ua_date }</td>


							</tr>
						</c:forEach>
						
						
					</table>

				</div>
				<table class="table table-striped">
					<tr>
						<td>
							<ul>
								<c:if test="${pageMaker.prev }">
									<a
										href='<c:url value="/jobAds/listAll?page=${pageMaker.makeSearch(pageMaker.startPage-1) }"/>'>
										이전</a>
								</c:if>
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="pageNum">
									<a href='<c:url value="/jobAds/listAll?page=${pageNum }"/>'>
										${pageNum }</a>                     		
							</c:forEach>
								<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
									<a
										href='<c:url value="/jobAds/listAllS?page=${pageMaker.endPage+1 }"/>'>
										다음</a>
								</c:if>
							</ul>
						</td>
						<td><a href="${contextPath }/">홈으로</a></td>
					</tr>
				</table>

			</section>
			<form method="get" action="favoriteSearch">
							<select name="option">
								<option value="job_code">직업코드</option>
								<option value="s_number">가게번호</option>
								<option value="a_number">공고번호</option>
								<option value="a_wage">시급</option>
							

							</select> <input type="text" name="value"> <input type="submit"
								value="검색">
						</form>
		</div>
		
		<!-- 목록보기끝 -->
		<br><br>
		
		<!-- 직업추천 & 대타자 평점 랭킹 Start -->
		<div
			class="blog-section section pb-120 pb-lg-100 pb-md-80 pb-sm-50 pb-xs-40">
			<div class="container st-border">
				<div class="row no-gutters">
					<div class="col-lg-6">
						<div class="blog-area">
							<div class="section-title-two text-left">
								<h3></h3>
							</div>

							<div class="blog-wrap ranking">
								<div class="single-list-blog">
									<div class="col-lg-4">
										<b> 1.외식음료 </b>
									</div>
									<div class="col-lg-8">
										 '호프', '카페', '음식점'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										<b> 2.유통,판매 </b>
									</div>
									<div class="col-lg-8">
										 '백화점', '마트', '기타매장'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 3.문화,여가 </b>
									</div>
									<div class="col-lg-8">
										  '놀이공원', '숙박', 'pc방', '볼링장'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 4.서비스 </b>
									</div>
									<div class="col-lg-8">
										'주차관리', '보안', '경비', '경호'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										<b> 5.서비스 </b>
									</div>
									<div class="col-lg-8">
										'반려동물케어', '가사도우미', '청소'
									</div>
								</div>
								
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 6.서비스 </b>
									</div>
									<div class="col-lg-8">
										 '헤어', '미용', '피부', '마사지'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 7.서비스 </b>
									</div>
									<div class="col-lg-8">
										 '안내데스크', '이벤트행사', '모델'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 8.사무회계 </b>
									</div>
									<div class="col-lg-8">
										  '사무보조', '마케팅'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 9.고객상담,영업 </b>
									</div>
									<div class="col-lg-8">
										'영업', '설문조사'
									</div>
									
								</div>
								
								
								
								
								<div class="col-lg-12">
									<p class="ranking-info">
										*본 직업분류는 '오늘의대타'내에서만 사용되는 직업 분류 코드입니다.
									</p>
									
								</div>
							</div>
						</div>
						<!-- 대타자 평점 랭킹 End -->
					</div>
					
					
					
					<div class="col-lg-6">
						<div class="blog-area">
							<div class="section-title-two text-left">
								<h3></h3>
							</div>

							<div class="blog-wrap ranking">
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 10.건설,노무 </b>
									</div>
									<div class="col-lg-8">
										 '건설현장', '배관', '용접'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 11.생산 </b>
									</div>
									<div class="col-lg-8">
										  '제조', '가공', '포장', '품질검사'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 12.IT,인터넷 </b>
									</div>
									<div class="col-lg-8">
										  '테스터', 'PC설치', '마케팅', '외주코딩'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 13.교육,강사 </b>
									</div>
									<div class="col-lg-8">
										'학원', '운동트레이너', '레져', '방문교사'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										<b> 14.디자인 </b>
									</div>
									<div class="col-lg-8">
										'외주디자인'
									</div>
								</div>
								
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 15.미디어 </b>
									</div>
									<div class="col-lg-8">
										 '방청객', '촬영보조', '영상편집', '출판'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 16.운전,배달 </b>
									</div>
									<div class="col-lg-8">
										 '이삿짐', '대리운전', '수행기사', '중장비', '퀵'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 17.병원,간호 </b>
									</div>
									<div class="col-lg-8">
										  '간호', '사회복지', '외래보조', '임상시험'
									</div>
									
								</div>
								<div class="single-list-blog">
									<div class="col-lg-4">
										 <b> 18.농어촌 </b>
									</div>
									<div class="col-lg-8">
										'농업', '어업'
									</div>
									<div class="single-list-blog"></div>
							
								
					
							</div>
						</div>
						<!-- 대타자 평점 랭킹 End -->
					</div>
					
						<!-- 대타자 평점 랭킹 End -->
					</div>
				</div>
			</div>
		</div>
		<!-- 직업추천 & 대타자 평점 랭킹 End -->
		

		<!-- 일반구인 리스트 Start -->
	
		<!-- 일반구인 리스트 End -->

		<!-- 최저시급 Start -->
	
		<!-- 최저시급 End -->

		
		<!-- 농어촌 & 돌봄 구인 Start -->
	
		<!-- 농어촌 & 돌봄 구인 End -->

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
	<script
		src="${contextPath}/resources/assets/js/vendor/modernizr-3.10.0.min.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							$("#si")
									.on(
											'change',
											function() {
												var select = $('#si').val();//값 가져오기
												alert(성공);

												$
														.ajax({
															type : 'POST',
															url : '${pageContext.request.contextPath}/jobAds/listAll',
															data : select,
															dataType : 'json',
															success : function(
																	result) {
																alert(result);
																var gu = {};

																for (var i = 0; i < result.length; i++) {
																	gu += '<option value="' + result[i].Gu+ '">'
																			+ result[i].Gu
																			+ '</option>';
																}
																alert(gu);
																$('#Gu').html(
																		gu);
															},
															error : function(
																	result) {
																alert("error");
															}
														});
											});

						});
	</script>



</body>
</html>