<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${contextPath}/resources/custom_css/dashBoard.css">

<div class="col-xl-2 col-lg-3">
	<div class="dashboard-sidebar">
		<div class="dashboard-menu">
			<ul class="nav">								
				<li>
					<h3>게시판 메뉴</h3>
					<ul>
						<li><a href="${contextPath}/board/free"><i 
								class="lnr lnr-thumbs-down"></i>자유 게시판</a></li>											
						<li><a href="${contextPath}/board/temping"><i 
								class="lnr lnr-thumbs-down"></i>땜빵 게시판</a></li>
					</ul>
				</li>									
			</ul>
		</div>
	</div>
</div>					