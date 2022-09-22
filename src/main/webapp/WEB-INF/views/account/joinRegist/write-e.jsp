<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/moncss1.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/custom_css/moncss2.css">

<body class="template-color-3">
	<div id="main-wrapper">
		<!-- header -->
		<header class="header-absolute black-logo-version header-sticky sticky-white no-padding d-none d-lg-block pt-25 pb-25">
			<%@ include file="../../include/header.jsp" %>
		</header>

		<div id="content">
			<!--// 회원가입 -->
			<div class="monLeave monUserJoin joinPerson">
				<br><br><br><br>
				<h1 style="padding: 5rem;">개인회원 가입</h1>

				<form method="post" enctype="multipart/form-data">
					<!--// 동의 -->
					<div class="innerrr">
						<div class="user_join_agree">
							<input type="checkbox" name="check_all" id="check_all" value=""><label for="check_all">필수동의 항목 및 [선택] 개인정보 수집 및 이용동의, [선택] 광고성 정보 이메일/SMS 수신 동의에 일괄 동의합니다.</label>
						</div>
						<div class="join_dot"></div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="agree1" id="agree1" value="on" data-required="1"><label for="agreeChk_5"><span>[필수]</span> 만 15세 이상입니다</label>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="agree2" id="agree2" value="on" data-required="1"><label for="agreeChk_0"><span>[필수]</span> 서비스 이용약관 동의</label>
							<div class="toggle_terms">
								<a href="/deataworld/daetaFooter/terms">내용보기</a>
							</div>
							<div class="agree_terms"></div>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="Agree2" id="agreeChk_1" value="on" data-required="1"><label for="agreeChk_1"><span>[필수]</span> 개인정보 수집 및 이용 동의</label>
							<div class="toggle_terms">
								<a href="/deataworld/daetaFooter/terms">내용보기</a>
							</div>
							<div class="agree_terms">
								오늘의대타 서비스 이용을 위해 아래와 같이 개인정보를 수집 및 이용합니다. <br>동의를 거부할 권리가 있으며, 동의 거부 시 오늘의대타 회원서비스 이용이 불가합니다.
							</div>
						</div>
						<div class="join_dot"></div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="terms1" id="terms1" value="on"><label for="agreeChk_3"><span class="select">[선택]</span> 개인정보 수집 및 이용 동의</label>
							<div class="toggle_terms">
								<a href="/deataworld/daetaFooter/terms">내용보기</a>
							</div>
							<div class="agree_terms">
								내용보기 클릭시 t_on 클래스 추가 
							</div>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="terms2" id="terms2" value="on"><label for="agreeChk_2"><span class="select">[선택]</span> 광고성 정보 이메일/SMS 수신 동의 <br />
							<span class="promotion_type">(알바 뉴스레터, 소식 및 광고메일, 휴대폰 알림)</span></label>
							<div class="toggle_terms">
								<a href="/deataworld/daetaFooter/terms">내용보기</a>
							</div>
							<div class="agree_terms">
								내용보기 클릭시 t_on 클래스 추가 
							</div>
						</div>
					</div>
					<!-- 동의 끝 //-->
					<!--// 회원가입폼 -->
					<div class="inner1">
						<div class="step3">
							<div class="tbLeave tbJoin">
								<table>
									<tr>
										<td colspan="2" class="tLine"><div></div></td>
									</tr>
									<tr>
										<th style="width: 11rem;">프로필 사진</th>
										<td class="single-input mb-25">
											<label class="file-label" for="chooseFile"> 사진 등록</label>
											<input class="file" name="chooseFile" id="m_picture" type="file" accept="image/png, image/jpeg, image/gif">
										</td>
									</tr>
									<tr>
										<th>닉네임</th>
										<td><input type="text" name="m_nick" id="m_nick" class="tBox tPwd" maxlength="8" placeholder="2~8자 한글, 영문, 숫자"></td>
										<td><input type="button" id="m_nickChk" style="margin-right: 40px;" onclick="m_nickCheck()" value="중복검사"></td>
									</tr>
									<tr>
										<th>아이디</th>
										<td><input type="text" name="m_id" id="m_id" class="tBox tPwd" maxlength="16" placeholder="6~16자 영문, 숫자"></td>
										<td><input type="button" id="m_idChk" onclick="m_idCheck()" value="중복검사"></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td>
											<input type="password" name="m_password" id="m_password" class="tBox tPwd" maxlength="16" placeholder="8~16자 영문, 숫자, 특수문자">
											<p class="compul" id="pwdSafeResult"></p>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인</th>
										<td>
											<input type="password" id="m_password2" class="tBox tPwd" maxlength="16" placeholder="비밀번호 재입력">
											<p class="compul" id="pwdConfirm"></p>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" name="m_name" id="m_name" class="tBox" maxlength="12" placeholder="이름"></td>
									</tr>

									<tr>
										<th>나이</th>
										<td><input type="text" name="m_age" id="m_age" class="tBox" maxlength="3" placeholder="나이"></td>
									</tr>
									<tr>
										<th>성별</th>
										<td>
											<label><input type="radio" name="m_gender" value="남" checked>남성</label>
											<label><input type="radio" name="m_gender" value="여">여성</label>
										</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td><input type="text" name="m_email" id="m_email" class="tBox" maxlength="30" placeholder="이메일">
										<td><input type="button" id="mail-Check-Btn" value="인증"></td>
									</tr>
									<tr>
										<th></th>
										<td>
											<input type="text" class="tBox mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" maxlength="6">
											<span id="mail-check-warn"></span>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
									<tr>
										<th>휴대폰 번호</th>
										<td><input type="text" name="m_phone" id="m_phone" maxlength="11" placeholder="- 공백 없이 입력" class="tBox"></td>
									</tr>
									<tr>
										<th class="tbPt">주소</th>
										<td>
											<input type="text" name="m_address1" id="m_address1" class="tBox tConfirmNum_2" placeholder="주소검색">
											<input type="text" name="m_address2" id="m_address2" class="tBox tConfirmNum_2" placeholder="상세주소 입력">
										</td>
									</tr>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="info_confirm" id="boxJoinConfirm" style="display: none;">입력한 정보를 다시 확인해주세요.</div>
						<div class="btnBx">
							<!--   <img src="${contextPath}/resources/assets/images/companies_logo/logo-100/logo1.jpg" alt="가입하기"> -->
							<button type="button" onclick="joinform_check()">
								<img src="${contextPath}/resources/images/btn_user_join0.png" alt="가입하기">
							</button>
						</div>
					</div>
					<!-- 회원가입폼 끝 //-->
				</form>
			</div>
			<!-- 회원가입 끝 //-->
		</div>

		<!-- footer -->
		<%@ include file="../../include/footer.jsp" %>

	</div>
	<!-- Placed js at the end of the document so the pages load faster -->
	<!-- All jquery file included here -->
	<script src="${contextPath}/resources/assets/js/vendor/jquery-3.5.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- <script src="${contextPath}/resources/assets/js/plugins/plugins.js"></script>-->
	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<script src="${contextPath}/resources/assets/js/plugins/plugins.min.js"></script>
	<script src="${contextPath}/resources/assets/js/main.js"></script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
<script>
	let veriCheck = false;
	let nickveri = false;
	let idveri = false;

	$(function() {
		$(".innerrr").on("click", "#check_all", function() {
			var checked = $(this).is(":checked");
			if(checked)
				$(this).parents(".innerrr").find('input').prop("checked", true);
			else
				$(this).parents(".innerrr").find('input').prop("checked", false);
		});
	
		// 이메일 인증
		$('#mail-Check-Btn').click(function() {
			const email = $('#m_email').val(); // 이메일 주소값 얻어오기!
			console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
			const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
			veriCheck = false;

			$.ajax({
				url : 'emailAuth',
				data : {
					'email' : email
				},
				dataType : 'json',
				type : 'post',
				success : function(res) {
					alert("인증번호가 발송되었습니다.");
					console.log(res);
					email_auth_cd = res;
					$('.mail-check-input').attr("disabled", false);
				},
				error : function(res) {
					alert("메일 발송에 실패했습니다.");
					console.log(res);
				}
			}); // end ajax
		}); // end send eamil

		// 인증번호 비교 
		// blur -> focus가 벗어나는 경우 발생
		$('.mail-check-input').blur(function() {
			const inputCode = $(this).val();
			const $resultMsg = $('#mail-check-warn');

			if (inputCode == email_auth_cd) {
				$resultMsg.html('인증번호가 일치합니다.');
				$resultMsg.css('color', 'green');
				$('#mail-Check-Btn').attr('disabled', true);
				$('#userEmail1').attr('readonly', true);
				$('#userEmail2').attr('readonly', true);
				$('#userEmail2').attr('onFocus',
						'this.initialSelect = this.selectedIndex');
				$('#userEmail2').attr('onChange',
						'this.selectedIndex = this.initialSelect');
				$('.mail-check-input').attr("disabled", true);
				veriCheck = true;
			} else {
				$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
				$resultMsg.css('color', 'red');
				veriCheck = false;
			}
		});
	});
	
	// 주소 검색
	window.onload = function() {
		document.getElementById("m_address1").addEventListener("click", function() { //주소입력칸을 클릭하면
			//카카오 지도 발생
			new daum.Postcode({
				oncomplete : function(data) { //선택시 입력값 세팅
					document.getElementById("m_address1").value = data.address; // 주소 넣기
					document.querySelector("input[name=m_address2]").focus(); //상세입력 포커싱
				}
			}).open();
		});
	}
	
	// 닉네임 중복체크
	function m_nickCheck() {
		nickveri = false;
		$.ajax({
			url : "account/m_nickChk",
			data : {
				"m_nick" : $("#m_nick").val()
			},
			dataType : 'json',
			type : 'POST',
			success : function(result) {
				if (result == 1) {
					alert('이미 등록된 닉네임입니다.');
					console.log('불가');
				} else if (result == 0) {
					alert('사용 가능한 닉네임입니다.');
					console.log('가능');
					nickveri = true;
				} else {
					alert('닉네임을 입력하세요.');
				}
			}
		});
	}

	// 아이디 중복체크
	function m_idCheck() {
		idveri = false;
		$.ajax({
			url : "account/m_idChk",
			data : {
				"m_id" : $("#m_id").val()
			},
			dataType : 'json',
			type : 'POST',
			success : function(result) {
				if (result == 1) {
					alert('이미 등록된 아이디입니다.');
					console.log('불가');
				} else if (result == 0) {
					alert('사용 가능한 아이디입니다.');
					console.log('가능');
					idveri = true;
				} else {
					alert('아이디를 입력하세요.');
				}
			}
		});
	}



	//joinform_check 함수로 유효성 검사
	function joinform_check() {
		alert('submit');
		//변수에 담아주기
		/* var uid = document.getElementById("uid");
		var pwd = document.getElementById("pwd");
		var repwd = document.getElementById("repwd");
		var uname = document.getElementById("uname");
		var female = document.getElementById("female");
		var male = document.getElementById("male");
		var mobile = document.getElementById("mobile");
		var email_id = document.getElementById("email_id");
		var agree = document.getElementById("agree");

		if (uid.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
			alert("아이디를 입력하세요.");
			uid.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
			return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
		}

		if (pwd.value == "") {
			alert("비밀번호를 입력하세요.");
			pwd.focus();
			return false;
		}

		//비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
		var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

		if (!pwdCheck.test(pwd.value)) {
			alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
			pwd.focus();
			return false;
		}

		if (repwd.value !== pwd.value) {
			alert("비밀번호가 일치하지 않습니다..");
			repwd.focus();
			return false;
		}

		if (uname.value == "") {
			alert("이름을 입력하세요.");
			uname.focus();
			return false;
		}

		if (!female.checked && !male.checked) { //둘다 미체크시
			alert("성별을 선택해 주세요.");
			female.focus();
			return false;
		}

		var reg = /^[0-9]+/g; //숫자만 입력하는 정규식

		if (!reg.test(mobile.value)) {
			alert("전화번호는 숫자만 입력할 수 있습니다.");
			mobile.focus();
			return false;
		}

		if (email_id.value == "") {
			alert("이메일 주소를 입력하세요.");
			email_id.focus();
			return false;
		}

		if (!agree1.checked) { //체크박스 미체크시
			alert("약관 동의를 체크하세요.");
			agree.focus();
			return false;
		} */

		//입력 값 전송
		$('form').submit();
	}

	//아이디 중복체크 팝업창(현재 공백문서)
	function id_check() {
		//window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
		window.open("", "", "width=600, height=200, left=200, top=100");
	}

	//이메일 옵션 선택후 주소 자동 완성
	function change_email() {
		var email_add = document.getElementById("email_add");
		var email_sel = document.getElementById("email_sel");

		//지금 골라진 옵션의 순서와 값 구하기
		var idx = email_sel.options.selectedIndex;
		var val = email_sel.options[idx].value;

		email_add.value = val;
	}

	//우편번호 검색 팝업창(현재 공백문서)
	function search_address() {
		window.open("", "b", "width=600, height=300, left=200, top=100");
	}
	
	
	
</script>
</body>
</html>