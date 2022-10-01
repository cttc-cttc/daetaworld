<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- (1) LoginWithNaverId Javscript SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId: 'eiV54Jtq4SI3YzMlgZcF',
		callbackUrl: 'http://localhost:8088/deataworld/naverCallback',
		isPopup: false,
		callbackHandle: true,
		/* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
	});

	/* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
	naverLogin.init();

	/* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
	window.addEventListener('load', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
			/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
			console.log(naverLogin.user); //사용자 정보를 받을수 있습니다.
			var name = naverLogin.user.getName();
			var email = naverLogin.user.getEmail();
			var nickName = naverLogin.user.getNickName();
			var id = naverLogin.user.getId().substring(0,10);
			console.log(name);
			console.log(email);
			console.log(nickName);
         
			if (name == undefined || name == null) {
 				alert('이름은 필수정보입니다. 정보제공을 동의해주세요.');
				/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
				naverLogin.reprompt();
				return;
			}
			if (email == undefined || email == null) {
				alert('이메일은 필수정보입니다. 정보제공을 동의해주세요.');
				/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
				naverLogin.reprompt();
				return;
			}
			if (nickName == undefined || nickName == null) {
				alert('별명은 필수정보입니다. 정보제공을 동의해주세요.');
				/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
				naverLogin.reprompt();
				return;
			}

			// 로그인
			var form = document.createElement('form');
			form.setAttribute('charset', 'utf-8');
			form.setAttribute('method', 'post');
			form.setAttribute('action', 'login');
         
			var inputId = document.createElement('input');
 			inputId.setAttribute('type', 'text');
			inputId.setAttribute('name', 'inputId');
         
			inputId.setAttribute('value', id);
			form.appendChild(inputId);

			var inputPassword = document.createElement('input');
			inputPassword.setAttribute('type', 'text');
			inputPassword.setAttribute('name', 'inputPassword');
			inputPassword.setAttribute('value', id);
			form.appendChild(inputPassword);

			document.body.appendChild(form);
			form.submit();
			document.body.removeChild(form);

			// alert('http://' + window.location.hostname + (location.port == '' || location.port == undefined ? '' : ':' + location.port) + '/deataworld/');
			// window.location.replace('http://' + window.location.hostname + (location.port == '' || location.port == undefined ? '' : ':' + location.port) + '/deataworld/');
			} else {
				console.log('callback 처리에 실패하였습니다.');
			}
		});
	});
</script>