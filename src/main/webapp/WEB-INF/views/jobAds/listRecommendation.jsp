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
 
 
    
    
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/css/default.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/css/main.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/css/qna.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/css/animation.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/css/result.css">
    
    
    
    
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--bootstrap의 사용을 위해-->
<body>
    <div class="container"> <!--bootstrap의 사용을 위해-->
        <section id="main" class="mx-auto my-4 py-5 px-3">  <!--bootstrap사용, mx-auto: 양쪽의 margin을 같게 해줌-->
            <h3>5가지 질문으로 찾아보는 일자리 추천 시작!</h3>
            <div class="col-lg-8 col-md-8 col-sm-10 col-12 mx-auto mb-2">  <!--해상도에 맞는 크기 선언-->
              
                
                <img src="${contextPath}/resources/images/img/logo100.png"  class="img-fluid"/> <!--img-fluid: col값을 따라가게 됨-->
            </div>
            <p class="mb-4">나와 꼭맞는 일자리 추천</br>
               아래의 START버튼을 눌러 시작
            </p>
            <button type="button" class="btn btn-secondary btn-lg">START</button>
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
            <h3>오늘 당신의 추천 일자리는!</h3>
            <div class="resultName"></div>
            <div id="resultImg" class="col-lg-6 col-md-6 col-sm-8 col-8 mx-auto my-3 mb-2">  <!--해상도에 맞는 크기 선언-->
            </div>
            <div class="resultDesc"></div>
            <button type="button" class="kakao py-2 px-3">바로찾기</button>
        </section>
    </div>
  
    <script src="${contextPath}/resources/custom_js/js/data.js"></script>
    <script src="${contextPath}/resources/custom_js/js/start.js"></script>
</body>

</body>
</html>