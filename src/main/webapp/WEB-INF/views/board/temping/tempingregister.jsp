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
	
	  <!-- Main content -->
    <section class="content container-fluid">
		<div class="box-header">
			<h3 class="box-title">땜빵 게시판 글쓰기</h3>
		</div>
	
		<form role="form" action="register" method="post" >
			
			
			<div class="box-body">
				<div class="form-group">
					<label>제목</label> <input type="text"
						name='b_title' class="form-control" placeholder="제목을 입력하세요">
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" name="b_contents" rows="3"
						placeholder="내용을 입력하세요"></textarea>
				</div>
	
				<div class="form-group">
					<label>작성자</label> <input type="text" name="m_id" class="form-control"  
						>
				</div>
			</div>
	
			<div class="box-footer">
				<button type="submit" class="btn btn-primary">작성완료</button>
			</div>
		</form>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	

	
	
	
	
	
	
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


	
	<script>
$.ajax({
    url: 주소,
    data : 전송데이터,
    dataType : 데이터타입,
    type : 전송타입,
    success : function(result){
       
    },
    error : function(result){
       
    }
    
 });
</script>


</body>
</script>)

</html>