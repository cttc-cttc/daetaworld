/**
 * 구직자 회원가입, 구인자 회원가입 공용 스크립트 
 */
let veriCheck = false; // 이메일 인증 여부
let nickveri = false; // 닉네임 중복체크 여부
let idveri = false; // 아이디 중복체크 여부

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

// 약관 전체 체크/해제
function checkAll() {
	const checkbox = $('input:checkbox[id="check_all"]');
	let checked = checkbox.is(':checked');
	if(checked)
		checkbox.parents('.agree_check').find('input').prop('checked', true);
	else
		checkbox.parents('.agree_check').find('input').prop('checked', false);
}

// 닉네임 중복체크
function m_nickCheck() {
	let m_nick = $('#m_nick').val();
	if(m_nick == '') {
		alert('닉네임을 입력해주세요.');
		$('#m_nick').focus();
		return;
	}
	// 닉네임 조건 : 2~8자 한글, 영문, 숫자
	const reg_nick = /^[가-힣A-Za-z0-9]{2,8}$/;
	if(!reg_nick.test(m_nick)) {
		alert('닉네임은 2~8자 한글, 영문, 숫자만 사용 가능합니다.');
		$('#m_nick').focus();
		return;
	}
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
				$('#veriChkNick').html('');
				$('#m_nick').focus();
			} else {
				alert('사용 가능한 닉네임입니다.');
				console.log('가능');
				nickveri = true;
				$('#veriChkNick').html('사용가능');
				$('#m_id').focus();
			}
		}
	});
}

// 아이디 중복체크
function m_idCheck() {
	let m_id = $('#m_id').val();
	if(m_id == '') {
		alert('아이디를 입력해주세요.');
		$('#m_id').focus();
		return;
	}
	// 아이디 조건 : 6~16자 영문, 숫자
	const reg_id = /^[A-Za-z0-9]{6,16}$/;
	if(!reg_id.test(m_id)) {
		alert('아이디는 6~16자 영문, 숫자만 사용 가능합니다.');
		$('#m_id').focus();
		return;
	}
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
				$('#veriChkId').html('');
				$('#m_id').focus();
			} else {
				alert('사용 가능한 아이디입니다.');
				console.log('가능');
				idveri = true;
				$('#veriChkId').html('사용가능');
				$('#m_password').focus();
			}
		}
	});
}

// 이메일 인증
$('#mail-check-btn').click(function() {
	const email = $('#m_email').val(); // 이메일 주소값 얻어오기!
	console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
	if(email == '') {
		alert('이메일을 입력해주세요.');
		$('#m_email').focus();
		return;
	}
	// 이메일 조건 : abc@abc.com 형식
	const reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,30})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if(!reg_email.test(email)) {
		alert('이메일은 abc@abc.com 형식으로 입력해주세요.');
		$('#m_email').focus();
		return;
	}
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
		$resultMsg.css('color', 'mediumseagreen');
		$('#mail-check-btn').attr('disabled', true);
		$('#userEmail1').attr('readonly', true);
		$('#userEmail2').attr('readonly', true);
		$('#userEmail2').attr('onFocus',
				'this.initialSelect = this.selectedIndex');
		$('#userEmail2').attr('onChange',
				'this.selectedIndex = this.initialSelect');
		$('.mail-check-input').attr("disabled", true);
		veriCheck = true;
		$('#veriChkEmail').html('인증됨');
		$('#mail-check-btn').css('cursor', 'context-menu');
		$('#m_email').attr("disabled", true);
	} else {
		$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
		$resultMsg.css('color', 'red');
		veriCheck = false;
		$('#veriChkEmail').html('');
	}
});

// 유효성 검사
function joinform_check() {
	let agree1 = $('#agree1').is(':checked');
	let agree2 = $('#agree2').is(':checked');
	let agree3 = $('#agree3').is(':checked');
	let m_nick = $('#m_nick').val();
	let m_id = $('#m_id').val();
	let m_password = $('#m_password').val();
	let password2 = $('#password2').val();
	let m_name = $('#m_name').val();
	let m_age = $('#m_age').val();
	let m_email = $('#m_email').val();
	let m_phone = $('#m_phone').val();
	let m_address1 = $('#m_address1').val();
	let m_address2 = $('#m_address2').val();
	
	if(!agree1) {
		alert('필수 약관을 체크하셔야 합니다. (만 15세 이상 여부)');
		$('#agree1').focus();
		return;
	}
	if(!agree2) {
		alert('필수 약관을 체크하셔야 합니다. (서비스 이용약관 동의)');
		$('#agree2').focus();
		return;
	}
	if(!agree3) {
		alert('필수 약관을 체크하셔야 합니다. (개인정보 수집 및 이용 동의)');
		$('#agree3').focus();
		return;
	}
	
	if(m_nick == '') {
		alert('닉네임을 입력해주세요.');
		$('#m_nick').focus();
		return;
	}
	// 닉네임 조건 : 2~8자 한글, 영문, 숫자
	const reg_nick = /^[가-힣A-Za-z0-9]{2,8}$/;
	if(!reg_nick.test(m_nick)) {
		alert('닉네임은 2~8자 한글, 영문, 숫자만 사용 가능합니다.');
		$('#m_nick').focus();
		return;
	}
	
	if(m_id == '') {
		alert('아이디를 입력해주세요.');
		$('#m_id').focus();
		return;
	}
	// 아이디 조건 : 6~16자 영문, 숫자
	const reg_id = /^[A-Za-z0-9]{6,16}$/;
	if(!reg_id.test(m_id)) {
		alert('아이디는 6~16자 영문, 숫자만 사용 가능합니다.');
		$('#m_id').focus();
		return;
	}
	
	if(m_password == '') {
		alert('비밀번호를 입력해주세요.');
		$('#m_password').focus();
		return;
	}
	// 비밀번호 조건 : 영문 + 숫자 + 특수문자 8~16자리
	const reg_pass = /^(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]).{8,16}$/;
	if(!reg_pass.test(m_password)) {
		alert('비밀번호는 8~16자 영문 + 숫자 + 특수문자의 조합으로 작성해주세요.');
		$('#m_password').focus();
		return;
	}
	
	if(password2 == '') {
		alert('비밀번호 확인을 입력해주세요.');
		$('#password2').focus();
		return;
	}
	
	if(m_password != password2) {
		alert('비밀번호가 일치하지 않습니다.');
		$('#password2').focus();
		return;
	}
	
	if(m_name == '') {
		alert('이름을 입력해주세요');
		$('#m_name').focus();
		return;
	}
	
	if(m_age == '') {
		alert('나이를 입력해주세요');
		$('#m_age').focus();
		return;
	}
	// 나이 조건 : 15이상 120이하의 숫자
	const reg_age = /^[0-9]{2,3}$/;
	if(!reg_age.test(m_age) || m_age < 15 || m_age > 120) {
		alert('나이는 15이상 120이하의 숫자만 입력 가능합니다.');
		$('#m_age').focus();
		return;
	}
	
	if(m_email == '') {
		alert('이메일을 입력해주세요');
		$('#m_email').focus();
		return;
	}
	// 이메일 조건 : abc@abc.com 형식
	const reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,30})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if(!reg_email.test(m_email)) {
		alert('이메일은 abc@abc.com 형식으로 입력해주세요.');
		$('#m_email').focus();
		return;
	}
	
	if(m_phone == '') {
		alert('휴대폰 번호를 입력해주세요');
		$('#m_phone').focus();
		return;
	}
	// 휴대폰 번호 조건 : 000-0000-0000
	const reg_phone = /^\d{3}-\d{3,4}-\d{4}$/;
	if(!reg_phone.test(m_phone)) {
		alert('휴대폰 번호는 000-0000-0000 형식으로 입력해주세요.');
		$('#m_phone').focus();
		return;
	}
	
	if(m_address1 == '') {
		alert('주소를 입력해주세요');
		$('#m_address1').focus();
		return;
	}
	
	if(m_address2 == '') {
		alert('상세주소를 입력해주세요');
		$('#m_address2').focus();
		return;
	}
	
	if(!nickveri) {
		alert('닉네임 중복 여부를 확인해주세요.');
		$('#m_nickChk').focus();
		return;
	}
	
	if(!idveri) {
		alert('아이디 중복 여부를 확인해주세요.');
		$('#m_idChk').focus();
		return;
	}
	
	// 이메일 인증은 패스

	alert('오늘의대타 가입을 환영합니다.');
	$('form').submit();
}