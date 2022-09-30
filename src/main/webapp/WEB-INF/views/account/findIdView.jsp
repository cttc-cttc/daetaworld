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


   <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">아이디 찾기</h1>
                                        <p class="mb-4">이메일을 입력해주세요!</p>
                                    </div>
                                    <form class="user" action="/member/findId" method="POST">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="memberEmail" aria-describedby="emailHelp" name="memberEmail"
                                                placeholder="Enter Email Address...">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Find ID
                                        </button>
                                    </form>
                                    <hr>
                                  
                                    <a href="/member/loginView" class="btn btn-facebook btn-user btn-block">
                                           Login
                                        </a>
                                        <hr>
                                       <div class="text-center">
                                        <a class="small" href="${contextPath}">메인페이지</a>
                                    </div>

</html>