<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"
  integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script>
  Kakao.init('d6140eb0f3d4e274049880e659b9d48b'); // 사용하려는 앱의 JavaScript 키 입력

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken();
  function displayToken() {
    var token = '${code}';

    if(token != 'undefined') {
      Kakao.Auth.setAccessToken(token);
      Kakao.Auth.getStatusInfo()
        .then(function(res) {
        	alert('res');
        	console.log(res);
          if (res.status === 'connected') {
        	  alert('login success, token: ' + Kakao.Auth.getAccessToken());
            console.log('login success, token: ' + Kakao.Auth.getAccessToken());
            // requestUserInfo();
          }
        })
        .catch(function(err) {
        	alert('err');
        	console.log(err);
          Kakao.Auth.setAccessToken(null);
        });
    }
  }
  
  function requestUserInfo() {
	    Kakao.API.request({
	      url: '/v2/user/me',
	    })
	      .then(function(res) {
	        alert(JSON.stringify(res));
	      })
	      .catch(function(err) {
	        alert(
	          'failed to request user information: ' + JSON.stringify(err)
	        );
	    });
  }

  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    console.log(document.cookie);
    console.log(name);
    console.log(parts);
    console.log(parts.length);
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
</script>