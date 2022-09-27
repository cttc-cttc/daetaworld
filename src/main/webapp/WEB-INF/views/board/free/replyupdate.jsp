<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>댓글</title>
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


    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box-header">
			<h3 class="box-title">댓글수정</h3>
		</div>
	
			<form name="form" method="post" onsubmit="return rreplyupdate()">		
			<div class="box-body">
				<div class="form-group">
					<label>작성자</label> <input class="from-control"  name="m_nick" value="${loginM_nick}" readonly="readonly">
					<input type="hidden" name="m_id" value="${loginInfo.m_id}">
					
				</div>
				<div class="form-group">
					<textarea class="form-control" name="c_contents" rows="3"
						placeholder="댓글을 수정하세요">${commentsDTO.c_contents }</textarea>
				</div>
				<input type="hidden" name="b_number" value ="${commentsDTO.b_number}"/>
				<div class="form-group">
					<label>작성일자</label>
					<input type="text" name="redate" class="form-control"
					 readonly="readonly" value="${commentsDTO.c_date }">
				</div>
			</div>
	
			<div class="box-footer">
				<button type="submit" class="btn-primary ">수정완료</button>
			</div>
	
		</form>
    
    </section>
	
	
		
	
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
	
	
	
	</script>
	
	
<script type="text/javascript">
	
	function rreplyupdate() {
		if (!checkm_id(form.m_id.value)){
			return false;
		} else if (!checkc_contents(form.c_contents.value)) {
			return false;
		}
		
		alert('새 글쓰기 완료');
		return true;		
	}
	
	function checkExistData(value, m_id) {
		if (value == "" || value == " ") {
			alert(m_id + " 입력하세요");
			return false;
		}
		return true;
    }
	
	function checkm_id(m_id) {        
		        
		if (!checkExistData(m_id, "작성자를")){
			form.m_id.focus();
			return false;        
		} 
		
		return true;
		
	}
	function checkc_contents(c_contents) {        
		        
		if (!checkExistData(c_contents, "내용을")){
			form.c_contents.focus();
			return false;        
		} 
		
		return true;
		
	}
	
	
	
	
</script>

	
</body>
</html>