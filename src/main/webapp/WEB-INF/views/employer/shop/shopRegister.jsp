<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!doctype html>
<html class="no-js" lang="zxx">
<title>가게 등록</title>
<%@ include file="../../include/head.jsp" %>

<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/adminPage/admin_page.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/etc.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%@ include file="../../include/etc.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 

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
					<%@ include file="../../include/dashBoard.jsp"%>
					<div class="col-xl-10 col-lg-9">
						<div class="dashboard-main-inner">
							<div class="row">
								<div class="col-12">
									<div class="page-breadcrumb-content mb-40">
										<h1>가게 등록</h1>
									</div>
								</div>
							</div>
							<div class="dashboard-overview">
								<div class="row">
									<div class="col-xl-12 col-12">
										<div class="profile-applications mb-50">
											<div class="profile-applications-heading">
												<ul class="nav">
													<li><a href="myInfo?m_id=${loginInfo.m_id}">내 정보</a></li>
													<li><a href="shopManagement?m_id=${loginInfo.m_id}">내 가게</a></li>
													<li><a class="active" href="shopRegister?m_id=${loginInfo.m_id}">새 가게</a></li>
												</ul>
											</div>
											<div class="profile-applications-main-block">
												<div class="profile-applications-form">
													<form name="sr" action="shopRegister" method="post" onsubmit="return srChk()" enctype="multipart/form-data">
														<div class="row mb-30">
															<div class="col-lg-10">	
																<div class="row">															
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="s_name">가게 이름 <span>*</span></label> <input
																				type="text" name="s_name" id="s_name"
																				placeholder="이름을 입력하세요" />
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="s_address1">주소<span>*</span></label><input
																				type="text" id="s_address1" name="s_address1"
																				placeholder="클릭">
																			<input type="text" id="s_address2" name="s_address2"
																				placeholder="상세주소를 입력하세요">	
																		</div>
																		<!-- Single Input End -->
																	</div>																
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="license">사업자 등록증<span>*</span></label><input
																				type="file" id="license" name="license"
																				accept="image/png, image/jpeg, image/gif"
																				>
																		</div>
																		<!-- Single Input End -->
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="s_intro">가게 소개 <span>*</span></label><br>
																			<textarea name="s_intro" id="s_intro" rows="3"
																				placeholder="가게 소개를 해보세요"></textarea>
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopPicture">가게 사진 <span>*</span></label>
																				<div id="dropZone"
																					style="width: 365px; height: 300px; border-style: solid; border-color: black;">
																					<div id="fileDragDesc">파일을 올려주세요.</div>
																					<table id="fileListTable" width="100%" border="0px">
																						<tbody id="fileTableTbody">
																						</tbody>
																					</table>
																				</div>
																		</div>
																	</div>
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-15">
																			<label for="shopTags">가게 태그 <span>*</span></label><br>
																			<input type="text" id="s_tag1" name ="s_tag1" placeholder="6자 이내 5개까지 등록 가능"
																				value="${shopInfo.s_tag1 }">
																			<input type="text" id="s_tag2" name ="s_tag2"
																				value="${shopInfo.s_tag2 }">
																			<input type="text" id="s_tag3" name ="s_tag3"
																				value="${shopInfo.s_tag3 }">
																			<input type="text" id="s_tag4" name ="s_tag4"
																				value="${shopInfo.s_tag4 }">
																			<input type="text" id="s_tag5" name ="s_tag5"
																				value="${shopInfo.s_tag5 }">
																		</div>
																	</div>																	
																	<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6">
																		<!-- Single Input Start -->
																		<div class="single-input mb-25">
																			<label for="j_code">직종 선택<span>*</span></label>
																			<table>
																			<tr>																				
																				<td>
																					<div class="dropdown">
																						<button class="btn btn-secondary dropdown-toggle"
																							type="button" id="dropdownMenuButton"
																							data-toggle="dropdown" aria-haspopup="true"
																							aria-expanded="false">직종을 선택해주세요</button>
																						<div class="dropdown-menu"
																							aria-labelledby="dropdownMenuButton">
																							<c:forEach var="list" items="${jobList }">
																								<a class="dropdown-item" onclick="area(${list.j_code })">${list.j_type2 }</a>																								
																							</c:forEach>																							
																						</div>
																					</div> 
																					<input type="text" id="j_code" name="j_code" value="${list.j_type2 }" readonly="readonly">
																				</td>
																			</tr>
																			</table>	
																		</div>																		
																		<!-- Single Input End -->
																	</div>
																	<input type="hidden" id="m_id" name="m_id" value="${loginInfo.m_id}">
																																																														
																</div>
															</div>																
														</div>					
														<div class="row">
															<div class="col-12">
																<div
																	class="profile-action-btn d-flex flex-wrap align-content-center justify-content-between">
																	<button type="submit" class="ht-btn theme-btn theme-btn-two mb-xs-20">
																		등록</button>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
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
	
	<script type="text/javascript">
	
	// 주소 검색
	window.onload = function(){
	    document.getElementById("s_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("s_address1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=s_address2]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
	function area(code){		
		$('#j_code').val(code);
	}
	</script>
	
	<script type="text/javascript">
		function srChk(){
			if(!checkName(sr.s_name.value)){
				return false;
			}else if(!checkAddress(sr.s_address1.value, sr.s_address2.value)){
				return false;
			}else if(!checkJob(sr.j_code.value)){
				return false;
			}else if(!checkIntro(sr.s_intro.value)){
				return false;
			}
			alert("가게가 등록되었습니다");
			return true;
		
		function checkExist(value, dataName) {        
			if (value == "" || value == " ") {            
				alert(dataName + " 입력해주세요");            
				return false;        
			}        
			return true;    
		}
		
		function checkName(s_name){
			if(!checkExist(s_name, "가게 명을")){
				sr.s_name.focus();
				return false;
			}else{
				return true;
			}
		}
		
		function checkAddress(s_address1, s_address2){
			if(!checkExist(s_address1, "주소를")){
				sr.s_address1.focus();
				return false;
			}else if(!checkExist(s_address2, "주소를")){				
				return false;
			}else{
				return true;
			}
		}
		
		function checkJob(j_code){
			if(!checkExist(j_code, "직종을")){	
				sr.j_code.focus();
				return false;
			}else {
				return true;
			}
		}
		
		function checkIntro(s_intro){
			if(!checkExist(s_intro, "가게 소개를")){
				sr.s_intro.focus();
				return false;
			}else {
				return true;
			}
		}
	}
	</script>
	
</body>
</html>