<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>

<html class="no-js" lang="zxx">
<title>땜빵 게시판</title>
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
										<h1>땜빵게시판 글쓰기</h1>
									</div>
								</div>
							</div>
							
							<div class="table-responsive">
	
<form name="form" action="tempingregister" method="post" onsubmit="return asdf()" >

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
			<label>작성자</label> <input class="from-control"  name="m_nick" value="${loginM_nick}" readonly="readonly">
			<input type="hidden" name="m_id" value="${loginInfo.m_id}">
		</div>
	</div>

	<div class="box-footer">
		<button type="submit" class="btn btn-primary">작성완료</button>
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
	
	function asdf() {
		if (!checkb_title(form.b_title.value)){
			return false;
		} else if (!checkb_contents(form.b_contents.value)) {
			return false;
		}
		
		alert('새 글쓰기 완료');
		return true;		
	}
	
	function checkExistData(value, asdf) {
		if (value == "" || value == " ") {
			alert(asdf + " 입력하세요");
			return false;
		}
		return true;
    }
	
	function checkb_title(b_title) {        
		        
		if (!checkExistData(b_title, "제목을")){
			form.b_title.focus();
			return false;        
		} 
		
		return true;
		
	}
	function checkb_contents(b_contents) {        
		        
		if (!checkExistData(b_contents, "내용을")){
			form.b_contents.focus();
			return false;        
		} 
		
		return true;
		
	}
	
	
	
</script>

</body>
</html>