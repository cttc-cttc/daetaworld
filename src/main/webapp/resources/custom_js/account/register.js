/**
 * 구직자 회원가입, 구인자 회원가입 공용 스크립트 
 */
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

	alert('가입성공');
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