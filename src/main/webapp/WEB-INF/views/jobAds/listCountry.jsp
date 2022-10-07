<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>



<%@ include file="../include/head.jsp"%>
<!-- custom css -->
<link rel="stylesheet"
	href="${contextPath}/resources/custom_css/index.css">

<body class="template-color-3">

	<div id="main-wrapper">
		<!-- 상단 메뉴 start-->
		<header
			class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../include/header.jsp"%>
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

	<!-- 셀렉트 박스 start -->
	<form method="get" action="listJobAdsSearch"  >
		<div class="container">
			<table class="table">
				<tbody>

					<div class="container">
						<table class="table">
							<tbody>
								<thead>

								<tr>
									<th>지역</th> <!-- 지역 카테고리1 -->
									<td>
									<select class="form-select" onchange="selectAreaName1(this)">
										<option value="선택">선택</option>
										<c:forEach var="areaName1" items="${areaName1ListCountry }">
											<option value="${areaName1 }">${areaName1 }</option>
										</c:forEach>
									</select>
									</td>
									
									<td><label for="a_urgency"><span></span></label>                                                            
                                                            <input type="hidden" name="a_urgency" value='1' id="input_check" />
                                                            <input type="hidden" name="a_urgency" value='0' id="input_check_hidden"/>   </td>
							
									
									
								</tr>
								<!-- 붙여넣기 끝 -->
								
								<tr>
                           <td></td>
                           <td class = "select2"> <!-- 지역 카테고리2 -->
                           <select class="form-select" id="areaName2" onchange="selectAreaName2(this)"></select>
                           <input type="hidden" id="a_code" name="a_code" value="${row.a_code}">
                           </td>
                           <td></td>
                          
                        </tr>
						</thead>
							
							</tbody>
						</table>
						<input type = "hidden" id = "a_code" name = "a_code" value = "${a_code }">
						<input type = "hidden" id = "j_code" name = "j_code" value = 18 >
						
						<div class="field-item-submit" align="center">
							<button class="ht-btn theme-btn theme-btn-two">검색</button>
						</div>
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
		
		<section class="content">
			<div class="table-responsive">
				<table class="table table-striped" id="myTable">
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
							<th>가게이름<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
</svg></th>
							<th>날짜<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
</svg></th>
							<th>시간<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
</svg></th>
							<th>시급<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
</svg></th>
							<th>주소</th>
							<th>구인 인원</th>
							<th>급구여부</th>
							<th></th>

						</tr>
					</thead>
			<c:forEach var="jobsend" items="${list3 }">
						<tbody>
						
						<!-- 로그인 상태가 아닐때 -->
						<c:if test="${loginInfo.m_id == null }">
						<tr>
							<td class="tc"><a
								href="nonMember?a_number=${jobsend.a_number}">
									 ${jobsend.s_name}</a></td>
							<td class="tc">${jobsend.a_date}</td>
							<td class="tc">${jobsend.a_time}</td>
							<td class="tc">${jobsend.a_wage}</td>
							<td class="tc">${jobsend.s_address1 }</td>
							<td class="tc">${jobsend.a_need }</td>
							<td class="tc"><c:if test="${jobsend.a_urgency==1 }">
                                                               <c:out value="o"></c:out>
                                                            </c:if>
                                                            <c:if test="${jobsend.a_urgency==0 }">
                                                               <c:out value="x"></c:out>
                                                            </c:if></td>
							<td></td>
						</tr>
						</c:if>


						<!-- 로그인 상태일때 -->
						<c:if test="${loginInfo.m_id != null }">
						<tr>
							<td class="tc"><a
								href="listAllDetail?s_name=${jobsend.s_name}&m_id=${loginInfo.m_id}&s_number=${jobsend.s_number}&a_number=${jobsend.a_number}">
									 ${jobsend.s_name}</a></td>
							<td class="tc">${jobsend.a_date}</td>
							<td class="tc">${jobsend.a_time}</td>
							<td class="tc">${jobsend.a_wage}</td>
							<td class="tc">${jobsend.s_address1 }</td>
							<td class="tc">${jobsend.a_need }</td>
							<td></td>
						</tr>
						</c:if>
						
						
						</tbody>
					</c:forEach>
				</table>

			</div>
			<table class="table table-striped">
				<tr>
					<td>
						<ul>
							<c:if test="${pageMaker.prev }">
								<a
									href='<c:url value="/jobAds/listAll?page=${pageMaker.makeSearch(pageMaker.startPage-1) }"/>'>
									이전</a>
							</c:if>
							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="pageNum">
								<a href='<c:url value="/jobAds/listAll?page=${pageNum }"/>'>
									${pageNum }</a>                     		
							</c:forEach>
							<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
								<a
									href='<c:url value="/jobAds/listAll?page=${pageMaker.endPage+1 }"/>'>
									다음</a>
							</c:if>
						</ul>
					</td>
					<td><a href="${contextPath }/">홈으로</a></td>
				</tr>
			</table>

		</section>
		
	</div>

	<!-- 목록보기끝 -->

	

	<%@ include file="../include/footer.jsp"%>

	</div>
	<!-- Placed js at the end of the document so the pages load faster -->
	<%@ include file="../include/plugin.jsp"%>
	
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
   <script type="text/javascript">
      if(document.getElementById("input_check").checked) {
          document.getElementById("input_check_hidden").disabled = true;
      }
   </script> 
   <!-- 직종 -->
   	<!-- ajax 사용end -->
<script src="main.js"></script>
<script>
th = document.getElementsByTagName('th');

for(let c=0; c < th.length; c++){

    th[c].addEventListener('click',item(c))
}


function item(c){

    return function(){
      console.log(c)
      sortTable(c)
    }
}


function sortTable(c) {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("myTable");
  switching = true;
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[c];
      y = rows[i + 1].getElementsByTagName("TD")[c];
      //check if the two rows should switch place:
      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
        //if so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
</script>
</body>
</html>	