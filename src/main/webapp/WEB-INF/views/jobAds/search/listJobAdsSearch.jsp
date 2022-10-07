<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>



<%@ include file="../../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/index.css">

<body class="template-color-3">

	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../../include/header.jsp"%>
		</header>
		<!-- 상단 메뉴 end-->


	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

 <form method="get" action="listJobAdsSearch"  >
      <div class="container">
         <table class="table">
            <tbody>

               <div class="container">
                  <table class="table">
                     <tbody>


                        <tr>
                        
                           <th>지역</th> <!-- 지역 카테고리1 -->
                           <td>
                           <select class="form-select" onchange="selectAreaName1(this)">
                           
                              <option value="선택">선택</option>
                              <c:forEach var="areaName1" items="${areaName1List}">
                                 <option value="${areaName1 }" >${areaName1 }</option>
                              </c:forEach>
                           </select>
                           </td>
                           
                           
                           <th>직종</th>
                           <td><select class="form-select" onchange="selectJob1(this)" >
                                 <option value="선택">선택</option>
                              <c:forEach var="job1" items="${job1List }">
                                 <option value="${job1}" >${job1 }</option>
                              </c:forEach>
                                 
                           </select></td>
                           
                        </tr>
                        <!-- 붙여넣기 끝 -->
                        
                        <tr>
                           <td></td>
                           <td class = "select2"> <!-- 지역 카테고리2 -->
                           <select class="form-select" id="areaName2" onchange="selectAreaName2(this)"></select>
                           <input type="hidden" id="a_code" name="a_code" value="${row.a_code}">
                           </td>
                           <td></td>
                           <td class = "select22"><!-- 직종 카테고리2 -->
                           <select class="form-select" id="job2" onchange="selectJob2(this)"></select>
                           <input type="hidden" id="j_code" name="j_code" value="${row.j_code}">
                           </td>
                           
                        </tr>



                     </tbody>
                  </table>
                  
               </div>

            </tbody>
         </table>

      </div>
   </form>
	<br>
	<br>
	<!-- 셀렉트 박스end -->
	<!-- 목록보기 -->

	<div class="container">
		<!-- 로그인양식 -->

		<!-- 로그인양식끝 -->
		<section class="content">
			<div class="table-responsive">
				<table class="table table-striped">
					<colgroup>
						<col style="width: 17%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 14%;">
						<col style="width: 15%;">
						<col style="width: 17%;">
					</colgroup>

					<thead>

						<tr>
							<th>가게이름</th>
							<th>날짜</th>
							<th>시간</th>
							<th>시급</th>
							<th>주소</th>
							<th>구인 인원</th>
							<th></th>

						</tr>
					</thead>
					<c:forEach var="jobsend" items="${list1 }">
						<tr>
							<td class="tc"><a
								href="listAllDetail?s_name=${jobsend.s_name}&m_id=${jobsend.m_id}&s_number=${jobsend.s_number}&a_number=${jobsend.a_number}">
									 ${jobsend.s_name}</a></td>
							<td class="tc">${jobsend.a_date}</td>
							<td class="tc">${jobsend.a_time}</td>
							<td class="tc">${jobsend.a_wage}</td>
							<td class="tc">${jobsend.s_address1 }</td>
							<td class="tc">${jobsend.a_need }</td>
							<td></td>
						</tr>
					</c:forEach>
				</table>

			</div>
		

		</section>
		
	</div>

	<!-- 목록보기끝 -->

	

	<%@ include file="../../include/footer.jsp"%>

	</div>
	<!-- Placed js at the end of the document so the pages load faster -->
	<%@ include file="../../include/plugin.jsp"%>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	
	<!-- ajax 사용 -->
   <!-- 지역 -->
   
   <script>
    $(function() {
        $('.select2 > .nice-select').css('display','none');
     });
      
      
      // 지역 카테고리1 선택하면 직종 카테고리2 표시
      function selectAreaName1(target) {
         let areaName1 = target.value;
         if(areaName1 == '선택') {
            $('#areaName2').css('display', 'none');
            return;
         }
         
         $.ajax({
            url: '${contextPath}/jobAds/getAreaName2',
            data: {'a_name1': areaName1},
            dataType: 'json',
            type: 'post',
            success: function(result) {
               console.log(result);
               initAreaName2(); // areaName1을 선택할 때 마다 areaName2 안에 '선택 option' 하나만 있게 초기화
               $('#areaName2').css('display', 'block');
               result.forEach(function(row) {
                  let option = '<option value="'+ row.a_code +'">'+ row.a_name2 +'</option>';
                  $('#areaName2').append(option);
               });
            },
            error: function(res) {
               console.log('실패: '+res);
            }
         });
      }
      
      // 지역 카테고리2 초기화
      function initAreaName2() {
         const htmls = '<option value="선택">선택</option>';
         $('#areaName2').html(htmls);
      }
      
      // 지역 카테고리2 선택하면 일단 해당하는 지역코드를 콘솔에 표시
      function selectAreaName2(target) {
         let code = target.value;
         $('#a_code').val(code);
         console.log(code);
      }
   </script>
   
   
   
   
   <!-- 직종 -->
   <script>
   $(function() {
        $('.select22 > .nice-select').css('display','none');
     });
      
      // 직종 카테고리1 선택하면 직종 카테고리2 표시
      function selectJob1(target) {
         let job1 = target.value;
         if(job1 == '선택') {
            $('#job2').css('display', 'none');
            return;
         }
         
         $.ajax({
            url: '${contextPath}/jobAds/getJob2',
            data: {'j_type1': job1},
            dataType: 'json',
            type: 'post',
            success: function(result) {
               console.log(result);
               initJob2(); // areaName1을 선택할 때 마다 areaName2 안에 '선택 option' 하나만 있게 초기화
               $('#job2').css('display', 'block');
               result.forEach(function(row1) {
                  let option = '<option value="'+ row1.j_code +'">'+ row1.j_type2 +'</option>';
                  $('#job2').append(option);
               });
            },
            error: function(res) {
               console.log('실패: '+res);
            }
         });
      }
      
      // 직종 카테고리2 초기화
      function initJob2() {
         const htmls1 = '<option value="선택">선택</option>';
         $('#job2').html(htmls1);
      }
      
      // 직종 카테고리2 선택하면 일단 해당하는 직종코드를 콘솔에 표시
      function selectJob2(target) {
         let code2 = target.value;
         $('#j_code').val(code2);
         console.log(code2);
      }	
   </script>
   <!-- ajax 사용end -->
   <!-- 구인 상단 검색 -->
   
</body>
</html>