<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타 아이디찾기 결과 </title>
<%@ include file="../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/index.css">

<script type="text/javascript">



	var msg = "${msg}";
		 
		if (msg != "") {
			alert(msg);
		}


</script>

<body class="template-color-3" onkeydown="onEnterLogin()">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp" %>
			
			
			
		</header>
		

		
		
		
		
		<!-- 상단 여백 Section Start -->
		<div class="breadcrumb-section section bg_color--5 pt-60 pt-sm-50 pt-xs-40 pb-60 pb-sm-50 pb-xs-40">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="page-breadcrumb-content">
							<ul class="page-breadcrumb"> </ul>
							<br>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
		<!-- 상단 여백 Section end -->
		
		
				
        <br>
               
         <div align="center">           
            <br>
            
            
                        
  <h2> 아이디는  ${fid} 입니다.  </h2> <br/>
  		
  		
  		  	
  		  	
  		  
  		
 
				
			</div>
		</div>
		<!-- Login Register Section End -->
		
		
		
		<%@ include file="../include/footer.jsp" %>

	
	
	
	 <script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	
	
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../include/plugin.jsp" %>
	<script>
		function onEnterLogin() {
			var keyCode = window.event.keyCode;
			if (keyCode == 13) // 엔터키
				validate();
		}
		
		function validate() {
			$('form').submit();
		}
	</script>
	
	<script>
/* 아이디 찾기 */ 
//아이디 & 스토어 값 저장하기 위한 변수
	// 아이디 값 받고 출력하는 ajax
	function findId_click(){
		var m_name=$('#m_name').val()
		var m_email=$('#m_email').val()
		
		$.ajax({
			url:"${contextPath}/account/find_id",
			type:"POST",
			data:{"m_name":m_name, "m_email":m_email} ,
			success:function(data){
				if(data == 0){
					$('#id_value').text("회원 정보를 확인해주세요!");
					$('#m_name').val('');
					$('#m_email').val('');
				} else {
					$('#id_value').text(data);
					$('#m_name').val('');
					$('#m_email').val('');
					
				}
			},
			 error:function(){
	                alert("에러입니다");
	            }
		});
	};

const modal = document.getElementById("modal")
const btnModal = document.getElementById("find_id")

btnModal.addEventListener("click", e => {
    modal.style.display = "flex"
})

    
const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
})

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modal.style.display = "none"
    }
})


</script>
	
</body>
</html>