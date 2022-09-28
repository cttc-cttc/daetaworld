/**
 * 구직자 회원가입, 구인자 회원가입 공용 스크립트 
 */
let veriCheck = false; // 이메일 인증 여부
let nickveri = false; // 닉네임 중복체크 여부
let idveri = false; // 아이디 중복체크 여부



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
		$('#m_email').attr('readonly', 'readonly');
	} else {
		$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
		$resultMsg.css('color', 'red');
		veriCheck = false;
		$('#veriChkEmail').html('');
	}
});

// 유효성 검사
function findform_check() {
	
	let m_id = $('#m_id').val();
	
	
	let m_name = $('#m_name').val();
		let m_email = $('#m_email').val();
	
	

	
	if(m_id == '') {
		alert('아이디를 입력해주세요.');
		$('#m_id').focus();
		return;
	}
	// 아이디 조건 : 6~16자 영문, 숫자
	const reg_id = /^[A-Za-z0-9]{6,16}$/;
	if(!reg_id.test(m_id)) {
		alert('아이디는 6~16자 영문, 숫자 입니다.');
		$('#m_id').focus();
		return;
	}
	

	
	if(m_name == '') {
		alert('이름을 입력해주세요');
		$('#m_name').focus();
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
	
	
	
	
	// 이메일 인증은 패스

	alert('비밀번호는 ( ) 입니다.');
	$('form').submit();
}