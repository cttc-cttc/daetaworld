 		<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
    

    <title> 오늘의대타</title>
    
 




    <link rel="shortcut icon" href="/favicon.ico" />

    
    
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/custom_css/moncss1.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/custom_css/moncss2.css">


  
  
</head>



<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 

<body id="" >
    
    


    





        <div id="wrap">
            <!-- header -->
            

<div id="header">
    <div id="gnb">
        <h1>
            <a href=""><img src="${contextPath}resources/images/logo100.png"  class="png" width="160" height="58" alt="오늘의대타" /></a>
            
            <span></span>
            
        </h1>
          
          
          
          
          <!--  헤더 변경
            
        <ul class="lnb">
            <li><a href="/">홈</a></li>
                <li><a href="/recruit">채용정보</a></li>
                <li><a href="/ResumeSearch">인재정보</a></li>
            <li><a href="/community/tb_main">알바토크</a></li>

            <li>
                <a href="#" onclick="javascript: window.open('/customer/mon_faq.asp', 'popFAQ', 'width=900,height=770,scrollbars=no,menubar=0'); return false;">FAQ</a>
            </li>
            <li class="cs"><a href="/service/interests/interests_lowpay.asp">캠페인</a></li>

        </ul>

            -->
            
            
            
            
            
            
            
    </div>
</div>









<div id="content">
    <!--// 회원가입 -->
    <div class="monLeave monUserJoin joinPerson">
        <h1>개인회원 가입</h1>
        <input type="hidden" name="historyCert" id="historyCert" />

<form action="register"  method="post" role="form">          

<!--// 동의 -->
<!--  <form action="memberjoinpro.do" method="post" role="form" id="usercheck" name="member"> -->


<!--// 동의 -->
<div class="inner">





    <div class="user_join_agree">
        <input type="checkbox" name="check_all" id="check_all" value=""><label for="check_all">필수동의 항목 및 [선택] 개인정보 수집 및 이용동의, [선택] 광고성 정보 이메일/SMS 수신 동의에 일괄 동의합니다.</label>
    </div>
    <div class="join_dot"></div>
    <div class="user_join_agree agrSelect">
        <input type="checkbox" name="agree1" id="agree1" value="on" data-required="1"><label for="agreeChk_5"><span>[필수]</span> 만 15세 이상입니다</label>
    </div>
    <div class="user_join_agree agrSelect">
        <input type="checkbox" name="agree2" id="agree2" value="on" data-required="1"><label for="agreeChk_0"><span>[필수]</span> 서비스 이용약관 동의</label>
        <div class="toggle_terms"><a href="/deataworld/daetaFooter/terms">내용보기<span></span></a></div>
        <div class="agree_terms">
           
        </div>
    </div>
    <div class="user_join_agree agrSelect">
        <input type="checkbox" name="Agree2" id="agreeChk_1" value="on" data-required="1"><label for="agreeChk_1"><span>[필수]</span> 개인정보 수집 및 이용 동의</label>
        <div class="toggle_terms"><a href="/deataworld/daetaFooter/terms">내용보기<span></span></a></div>
        <div class="agree_terms">
            오늘의대타 서비스 이용을 위해 아래와 같이 개인정보를 수집 및 이용합니다. <br>동의를 거부할 권리가 있으며, 동의 거부 시 오늘의대타 회원서비스 이용이 불가합니다.
           
        </div>
    </div>
    <div class="join_dot"></div>
    <div class="user_join_agree agrSelect">
        <input type="checkbox" name="m_terms1" id="m_terms1" value="on"><label for="agreeChk_3"><span class="select">[선택]</span> 개인정보 수집 및 이용 동의</label>
        <div class="toggle_terms"><a href="/deataworld/daetaFooter/terms">내용보기<span></span></a></div>
        <div class="agree_terms">
            <!-- 내용보기 클릭시 t_on 클래스 추가  -->
           
        </div>
    </div>
    <div class="user_join_agree agrSelect">
        <input type="checkbox" name="m_terms1" id="m_terms1" value="on" /><label for="agreeChk_2"><span class="select">[선택]</span> 광고성 정보 이메일/SMS 수신 동의 <br /><span class="promotion_type">(알바 뉴스레터, 소식 및 광고메일, 휴대폰 알림)</span></label>
        <div class="toggle_terms">
            <a href="/deataworld/daetaFooter/terms">내용보기<span></span></a>
        </div>
        <div class="agree_terms">
            <!-- 내용보기 클릭시 t_on 클래스 추가  -->
          
        </div>
    </div>
</div>
<!-- 동의 끝 //-->            <!-- 동의 끝 //-->
            <!--// 회원가입폼 -->
            <div class="inner">
                <h2 class="skip">회원가입폼</h2>
                <div class="step3">
                    <div class="tbLeave tbJoin">
                        <table summary="회원가입폼">
                            <caption>회원가입폼</caption>
                            <colgroup>
                                <col width="120">
                                <col width="853">

                            </colgroup>
                            
             
                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
             
             
									
											
														
														
																																				
																	<div>												
																	
																	<tr>
																	<th>프로필 사진</th> <br>
																	<br>
																	<td>
																	<br><br><br><br>
																	<img  
																		style="height:200px; width:150px;"
																		src="${contextPath}/resources/images/${write-e.m_picture}"></td>
																	<td>
																	</tr>																	
																	<tr>																	
																	<td class="single-input mb-25">																	
																	<label class="file-label" for="chooseFile" >사진등록</label>
																		<input class="file" name="m_picture" id="m_picture"
																		  type="file" 																	   
																		  accept="image/png, image/jpeg, image/gif"
																		>
																	</td>																																	
																	</tr>																		
																																																																		
																</div>
													
															
															<div>
														
														<input type="hidden" name="m_picture" id="m_picture" value="${write-e.m_picture }">
														
															</div>
															
             
             
                            
                             
                                
                                 <tr>
                                    <th>닉네임</th>
                                    <td>
                                        <input type="text" name="m_nick" id="m_nick" value="${write-e.m_nick }" class="tBox tPwd" maxlength="8" placeholder="2~8자 한글, 숫자" title="닉네임" /></td>
                                        <td><input type="button" id="m_nickChk" name="m_nickChk" onclick="m_nickCheck()" value="중복검사"></td>
																						
                                        
                                    
                                </tr>
                                
                                
                                
                                
                            
                                    <th>아이디</th>
                                    <td>
                                        <input type="text" name="m_id" id="m_id" class="tBox tPwd" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디" />
                                 <td><input type="button" id="m_nickChk" name="m_nickChk" onclick="m_nickCheck()" value="중복검사"></td>
                                    </td>
                                </tr>
                                <tr>
                                    <th>비밀번호 <a href="javascript:;"><span class="iconPwdQues" id="dev_pwd_help_icon"></span></a></th>
                                    <td>
                                        <input type="password" name="m_password" class="tBox tPwd" id="m_password" maxlength="16" placeholder="8~16자 영문, 숫자, 특수문자" title="비밀번호" />
                                        <input type="hidden" name="birthcheck" id="dev_birthcheck" value="" />
                                        <p class="compul" id="PwdSafeResult"></p>
                                        <input id="dev_pwdchkStat" name="dev_pwdchkStat" type="hidden" value="" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>비밀번호 확인</th>
                                    <td>
                                        <input type="password" name="m_password2" id="m_password2" class="tBox tPwd" maxlength="16" placeholder="비밀번호 재입력" title="비밀번호확인" />
                                        <p class="compul" id="dev_chk_pwd_confirm"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <th>이름</th>
                                    <td>
                                        <input type="text" name="m_name" class="tBox" title="이름" id="m_name" maxlength="12" placeholder="이름" />
                                        <p class="compul"></p>
                                        <input id="dev_namechkStat" name="dev_namechkStat" type="hidden" value="" />
                                    </td>
                                </tr>
                                
                                 <tr>
                                    <th>나이</th>
                                    <td>
                                        <input type="text" name="m_age" class="tBox" title="나이" id="m_age" maxlength="3" placeholder="나이" />
                                        <p class="compul"></p>
                                        <input id="dev_namechkStat" name="dev_namechkStat" type="hidden" value="" />
                                    </td>
                                </tr>
                                
                                
                                
                      
					
					<tr>
			<th>성별</th>
			<td>
				<label><input type="radio" name="m_gender" id="m_gender" value="남" checked/>남성</label>
				<label><input type="radio" name="m_gender" id="m_gender" value="여" />여성</label>
			</td>
		</tr>
					
					
					
                                
                                <tr>
                                    <th>이메일</th>
                                    <td>
                                        <input type="text" name="m_email" class="tBox" id="m_email" maxlength="45" placeholder="이메일" title="이메일아이디">  
                                        
                                        <p class="compul" id="txtEmail"></p>
                                     
                                        
                                        <input type="text" class="tBox" placeholder="인증번호 6자리를 입력해주세요!"  maxlength="6">
										<span id="mail-check-warn"></span>	
                                    </td>
                                </tr>
                                
                                
                                
                              
                                
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <th>휴대폰 번호</th>
                                    <td>
                                      
                                        <input type="text" name="m_phone" id="m_phone" maxlength="11" placeholder="- 공백 없이 입력" class="tBox" title="휴대폰 번호">
                                      
                                        <p class="compul" id="txtCert"></p>
                                        <input id="dev_phoneChkStat" name="dev_phoneChkStat" type="hidden" value="" />
                                        <input id="dev_certChkStat" name="dev_certChkStat" type="hidden" value="" />
                                    </td>
                                </tr>
                                
                                  <tr>
                                    <th class="tbPt">주소</th>
                                    <td>
                                    	
                                        <input type="text" name="m_address1" id="m_address1"   class="tBox tConfirmNum_2" value="${myInfo.m_address1 }" placeholder="주소검색" >
                                        
                                       
                                       
                                        <input type="text" name="m_address2" id="m_address2" placeholder="상세주소 입력" class="tBox tConfirmNum_2" value="${myInfo.m_address2 }"  >
                                      
                                     
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                
                                
                               
                           



                        </table>
                        <div class="tooltip" style="display: none;" id="dev_pwd_help_tooltip">
                            <p>안전한 비밀번호 사용법</p>
                            <ul>
                                <li>8~16자의 영문 대소문자, 숫자, 특수문자 사용 <br>(사용 가능한 특수문자는 ! " # $ % & ( ) * + , - . / : ; ? @ [ ] ^ _ { } ~ 입니다.)</li>
                                <li>3자 이상 연속 영문/숫자 조합 사용불가</li>
                                <li>아이디와 동일한 비밀번호를 사용하지 마세요.</li>
                                <li>키보드의 연속 패턴은 사용하지 마세요.</li>
                                <li>개인정보를 포함하는 비밀번호를 사용하지 마세요.</li>
                                <li>비밀번호는 주기적으로 변경하세요.</li>
                               
                            </ul>
                            
                            <div class="btnClose"><a href="#"></a></div>
                        </div>
                    </div>
                </div>
                <div class="info_confirm" id="boxJoinConfirm" style="display: none;">입력한 정보를 다시 확인해주세요.</div>
                <div class="btnBx">
                	<!--   <img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="가입하기"> -->
                      <a href="#" id="btn_submit"> <button type="submit" class="btn btn-primary"><img src="${pageContext.request.contextPath}/resources/images/btn_user_join0.png" alt="가입하기">회원가입</button> </a> 
            </div>
            <!-- 회원가입폼 끝 //-->
</form>    </div>
    <!-- 회원가입 끝 //-->
</div>






            </div>
            <!-- //container -->
            <!-- footer -->
            <div id="footer">
    <address> &copy; <a href="http://todaypinch.co.kr" target="_blank">오늘의대타.</a> All rights reserved.</address>
</div>
            <!-- //footer -->
        

   
    
    <script type="text/javascript">
    

    $(".inner").on("click", "#check_all", function () {
      var checked = $(this).is(":checked");

      if(checked){
      	$(this).parents(".inner").find('input').prop("checked", true);
      } else {
      	$(this).parents(".inner").find('input').prop("checked", false);
      }
    });
    
    </script>
    
    

    
    
    
    
    
   
   
   





    


   

    
    
    
<%--    <script type="text/javascript" src="${contextPath}./Scripts/mon/biz/account/regist/mon.account.regist.core.js?dt=637970363596946889"></script>  --%>
<%--     <script type="text/javascript" src="${contextPath}./Scripts/mon/biz/account/regist/mon.account.regist.write.js?dt=637970363596946889"></script>  --%>
    


    <script type="text/javascript">
        // 회원가입 객체 생성
        var controller = new mon.account.regist.write.registWrite();
        // 유효성검사 객체 생성
        var registValidator = new mon.account.regist.write.registValidator();
    </script>


    

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
      
   let veriCheck = false;
   let nickveri = false;
	// 내 정보수정하기
	function check(chooseFile, m_picture, m_number, m_id, m_name, m_age, m_gender, m_regdate, m_warned, m_banned, m_quitted, m_type, pre_email, pre_nick){	
		var pre_email = $('#pre_email').val();
		var pre_nick = $('#pre_nick').val();
		var pre_picture = $('#m_picture').val();
		var new_picture = $('#chooseFile').val().replace("C:\\fakepath\\","");
		
		var m_number = $('#m_number').val();
		var m_id = $('#m_id').val();
		var m_password = $('#m_password').val();
		var m_name = $('#m_name').val();
		var m_nick = $('#m_nick').val();		
		var m_age = $('#m_age').val();		
		var m_gender = $('#m_gender').val();		
		var m_phone = $('#m_phone').val();		
		var m_address1 = $('#m_address1').val();		
		var m_address2 = $('#m_address2').val();	
		
		var m_picture;
		if(pre_picture != new_picture){
			m_picture = new_picture;
		}
		if(new_picture == ""){
			m_picture = pre_picture;
		}
		
		var m_email = $('#m_email').val();	
		
		var m_terms1;		
		if($("#m_terms1").is(':checked')==true){
			m_terms1 = 1;
		}else{
			m_terms1 = 0;
		}		
		
		var m_terms2;
		if($("#m_terms2").is(':checked')==true){
			m_terms2 = 1;
		}else{
			m_terms2 = 0;
		}
		
		var m_regdate = $('#m_regdate').val();	
		var m_warned = $('#m_warned').val();	
		var m_banned = $('#m_banned').val();	
		var m_quitted = $('#m_quitted').val();	
		var m_type = $('#m_type').val();	
		
		var confirm_password = $('#confirm_password').val();
		
		if(m_password != confirm_password){
			alert('비밀번호가 일치하지 않습니다');	
			return;
		}else{	
			
			if(m_email == pre_email){
				veriCheck = true;
			}
			
			if(!veriCheck) {
				alert('이메일 인증이 완료되지 않았습니다.');
				return;
			}			
			
			if(m_nick == pre_nick){
				nickveri = true;				
			}
			
			if(!nickveri){
				alert('닉네임 검사가 완료되지 않았습니다.');
				return;
			}
			
			var url = "${contextPath}/employerMapper/myInfoUpdate";
			var paramData = {
				"m_number" : m_number,				
				"m_id" : m_id,	
				"m_password" : m_password,	
				"m_name" : m_name,	
				"m_nick" : m_nick,
				"m_age" : m_age,					
				"m_gender" : m_gender,					
				"m_phone" : m_phone,			
				"m_address1" : m_address1,
				"m_address2" : m_address2,
				"m_picture" : m_picture,
				"m_email" : m_email,			
				"m_terms1" : m_terms1,			
				"m_terms2" : m_terms2,			
				"m_regdate" : m_regdate,			
				"m_warned" : m_warned,			
				"m_banned" : m_banned,			
				"m_quitted" : m_quitted,			
				"m_type" : m_type			
							
			}; // 수정데이터
			
			$.ajax({
				url : url,
				data : paramData,
				dataType : 'json',
				type : 'POST',
				success : function(result){
					console.log(result);					
					alert('정보가 수정되었습니다.');
					window.location.reload(true);
				},
				error : function(result){
					console.log(result);
					alert('정보 수정을 실패했습니다.');
				}
			});
		}	
	}	
	
	// 주소 검색
	window.onload = function(){
	    document.getElementById("m_address1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("m_address1").value = data.address; // 주소 넣기
	                document.querySelector("input[name=m_address2]").focus(); //상세입력 포커싱
	            }
	        }).open();
	    });
	}
	
	// 닉네임 중복체크
	function m_nickCheck(){
		nickveri = false;
		$.ajax({
			url : "${contextPath}/account/m_nickChk",
			data : {"m_nick" : $("#m_nick").val()},
			dataType : 'json',
			type : 'POST',
			success : function(result){
				if(result == 1){
					alert('이미 등록된 닉네임입니다.');
					console.log('불가');					
				}else if(result == 0){
					alert('사용 가능한 닉네임입니다.');
					console.log('가능');
					nickveri = true;
				}else{
					alert('닉네임을 입력하세요.');
				} 
			}
		});
	}
	
	// 이메일 인증
	$('#mail-Check-Btn').click(function() {
	      const email = $('#m_email').val(); // 이메일 주소값 얻어오기!
	      console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
	      const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
	      veriCheck = false;

	      $.ajax({
	         url : '${contextPath}/emailAuth',
	         data : {'email': email},
	         dataType : 'json',
	         type : 'post',
	         success: function(res){
	            alert("인증번호가 발송되었습니다.");
	            console.log(res);
	            email_auth_cd = res;
	            $('.mail-check-input').attr("disabled", false);
	         },
	         error: function(res){
	            alert("메일 발송에 실패했습니다.");
	            console.log(res);
	         }
	      }); // end ajax
	   }); // end send eamil
	   
	   // 인증번호 비교 
	   // blur -> focus가 벗어나는 경우 발생
	   $('.mail-check-input').blur(function () {
	      const inputCode = $(this).val();
	      const $resultMsg = $('#mail-check-warn');
	      
	      if(inputCode == email_auth_cd){
	         $resultMsg.html('인증번호가 일치합니다.');
	         $resultMsg.css('color','green');
	         $('#mail-Check-Btn').attr('disabled',true);
	         $('#userEmail1').attr('readonly',true);
	         $('#userEmail2').attr('readonly',true);
	         $('#userEmail2').attr('onFocus', 'this.initialSelect = this.selectedIndex');
	            $('#userEmail2').attr('onChange', 'this.selectedIndex = this.initialSelect');
	            $('.mail-check-input').attr("disabled", true);
	            veriCheck = true;
	      }else{
	         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
	         $resultMsg.css('color','red');
	         veriCheck = false;
	      }
	   });

	</script>







    


    
    <noscript><img src="//ngc7.nsm-corp.com/?uid=CN3B330392286&je=n&" border=0 width=0 height=0 /></noscript>
</body>
</html>