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
		<div class="dashboard-content-section section bg_color--5">
			<div class="container-fluid p-0">
				<div class="row no-gutters">
					<%@ include file="../../include/boardSidebar.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>자유게시판 글수정</h1>
									</div>
								</div>
							</div>
							
							<div class="table-responsive">
	
<form role="form" method="post" onsubmit="return update()">
	<div class="box-body">
		<div class="form-group">
			<label>제목</label> <input type="text"
				name="b_title" class="form-control"  value="${board.b_title}">
		</div>
		<div class="form-group">
			<label>내용</label>
			<textarea class="form-control" name="b_contents" rows="3">${board.b_contents}</textarea>
		</div>

		<div class="form-group">
			<label>작성자</label> <input type="text"
				name="m_id" class="form-control"  
				readonly="readonly"  value="${board.m_nick}">
		</div>
		<!-- 수정에 사용할 글번호 -->
		<input type="hidden" name="b_number" value="${board.b_number }" />
	</div>

	<div class="box-footer">
		<button type="submit" class="btn btn-primary">수정완료</button>
	</div>
</form>
							</div>
	
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../../include/footer.jsp"%>
		<!-- Placed js at the end of the document so the pages load faster -->
	</div>
	<%@ include file="../../include/plugin.jsp"%>
	
<script type="text/javascript">

	function update() {
		alert('글수정 완료');
		return true;		
	}
	
</script>


</body>
</html>