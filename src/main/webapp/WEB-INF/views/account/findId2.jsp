<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">

<body>

 <div class="card o-hidden border-0 shadow-lg my-5">
        
               
                    
                           <div class="jumbotron">
  <h2> 아이디는 : </h2><br/>
  		<ul>
  		<c:forEach items="${member}" var="member">
  		  	
  		  	<li>${member.m_id} </li><br/>
  		
  		</c:forEach>
  		</ul>
  	<h2>입니다</h2>
  <button type="button" class="btn btn-primary" onclick="location.href='/member/loginView'">로그인페이지</button>
  <button type="button" class="btn btn-primary" onclick="location.href='${contextPath}'">메인페이지</button>
  
  
</div>


</body>

</html>