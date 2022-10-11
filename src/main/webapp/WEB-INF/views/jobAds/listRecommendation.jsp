<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="" lang="">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">

 <title>일자리 추천</title>
 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
 
    
    
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/listRecommendation/default.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/listRecommendation/main.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/listRecommendation/qna.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/listRecommendation/animation.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/listRecommendation/result.css">
    
    
    
    
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--bootstrap의 사용을 위해-->
<body>
    <div class="container"> <!--bootstrap의 사용을 위해-->
        <section id="main" class="mx-auto my-4 py-5 px-3">  <!--bootstrap사용, mx-auto: 양쪽의 margin을 같게 해줌-->
            <h3>5가지 질문으로 찾아보는 일자리 추천</h3>
            <div class="col-lg-8 col-md-8 col-sm-10 col-12 mx-auto mb-2">  <!--해상도에 맞는 크기 선언-->
              
                <br><br> 
                <img src="${contextPath}/resources/images/listRecommendation/logo100.png"  class="img-fluid"/> <!--img-fluid: col값을 따라가게 됨-->
            </div>
            <br>
            <p class="mb-4">나와 꼭 맞는 일자리 찾기</br>
               아래의 START 버튼을 눌러 시작
            </p>
            <button type="button" class="btn btn-secondary btn-lg">START</button> 
            &nbsp  &nbsp
            <button type="button" onclick="location.href='${contextPath}'" class="btn btn-secondary btn-lg" >EXIT</button>
        </section>
        <section id="qna">
            <div class="status mx-auto mt-5">  <!--진행상태--> 
                <div class="statusBar">  
                </div>
            </div>
            <div class="qBox my-5 mx-auto py-3">   <!--질문-->
            </div>
            <div class="answerBox">  <!--답변-->
            </div>
        </section>
        <section id="result" class="mx-auto my-4 py-5 px-3">
            <h3>오늘의 추천 일자리는!</h3>
            <br><br>
            <div class="resultName"></div>
            <div id="resultImg" class="col-lg-6 col-md-6 col-sm-8 col-8 mx-auto my-3 mb-2">  <!--해상도에 맞는 크기 선언-->
            </div>
            <div class="resultDesc"></div>
            <br>
             <button type="button" onclick="location.href='${contextPath}'" class="kakao py-2 px-3" >홈으로</button>
			
				
        </section>
        		<!-- 직업코드 -->
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
						<!-- 왼쪽 -->
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
						<!-- 오른쪽 -->
					</div>
					
						<!-- 직업코드 끝 -->
					</div>
				</div>
			</div>
		</div>
        
        
        
        
        
    </div>
    
  
    
    <script src="${contextPath}/resources/custom_js/listRecommendation/data.js?ver=4"></script>
    <script src="${contextPath}/resources/custom_js/listRecommendation/start.js?ver=4"></script>
</body>

</body>
</html>