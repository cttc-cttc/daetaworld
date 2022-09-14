<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>자유 게시판</title>
<%@ include file="../../include/head.jsp"%>

<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
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
					<%@ include file="../../include/boardSidebar.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>자유 게시판</h1>
									</div>
								</div>
							</div>
						
						<div class="table-responsive">
					<table class="table table-striped">
							<div class="box-body">
				<div class="f	orm-group">
					<label>제목</label> <input type="text" name="b_title"
						class="form-control" value="${board.b_title}" readonly="readonly" />
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea name="b_contents" rows="5" readonly="readonly"
						class="form-control">${board.b_contents}</textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input type="text" name="m_id"
						class="form-control" value="${board.m_id}" readonly="readonly" />
				</div>
			</div>
						
						<tr>
						<div class="box-footer">
						<button id="" class="btn btn-success" >메인</button>
						<button class="btn btn-warning">수정</button>
						<button class="btn btn-danger">삭제</button>
						<button class="btn btn-primary">목록</button>
						<button class="btn btn-info">댓글작성</button>
						</div>
					<div class="box"></table>
						
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

	
	<script	src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script	src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script	src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
	
	
	<script >
		window.onload = (function(){
		//메인 버튼을 눌렀을 때 처리
			$(".btn-success").click(function(){
				console.log ="1";
				location.href="../";
			});
			//목록 버튼을 눌렀을 때 처리
			$(".btn-primary").click(function(){
				location.href="free";
			});
			//삭제 버튼을 눌렀을 때 처리
			$(".btn-danger").click(function(){
				location.href="delete?b_number=" + ${board.b_number};
			});
			//수정 버튼을 눌렀을 때 처리
			$(".btn-warning").click(function(){
				location.href="update?b_number=" + ${board.b_number};
			});
			//댓글작성 버튼을 눌렀을 때 처리
			$(".btn-info").click(function() {
				location.href = "reply?b_number=" + ${board.b_number};
			});
	});
	</script>
</body>
</html>