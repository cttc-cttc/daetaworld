<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"
  integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script>
  Kakao.init('d6140eb0f3d4e274049880e659b9d48b'); // 사용하려는 앱의 JavaScript 키 입력

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken();
  function displayToken() {
    var token = '${token}';

    if(token != 'undefined') {
      Kakao.Auth.setAccessToken(token);
      Kakao.Auth.getStatusInfo()
        .then(function(res) {
        	console.log(res);
          if (res.status === 'connected') {
            console.log('login success, token: ' + Kakao.Auth.getAccessToken());
            requestUserInfo();
          }
        })
        .catch(function(err) {
        	console.log(err);
          Kakao.Auth.setAccessToken(null);
        });
    }
  }
  
  function requestUserInfo() {
	    Kakao.API.request({
	      url: '/v2/user/me',
	      data: {
	    	    property_keys: ['kakao_account.email', 'kakao_account.nickname'],
	    	  },
	    })
	      .then(function(res) {
	    	const info = JSON.stringify(res);
	    	const id = res.id;
	        // console.log('${info.nickname}');
	        
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
	      })
	      .catch(function(err) {
	        console.log(
	          'failed to request user information: ' + JSON.stringify(err)
	        );
	    });
  }
</script>