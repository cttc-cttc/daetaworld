<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"
  integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script>
  Kakao.init('d6140eb0f3d4e274049880e659b9d48b'); // 사용하려는 앱의 JavaScript 키 입력
</script>

<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png" width="35"
    alt="카카오 로그인 버튼" />
</a>

<script>
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8088/deataworld/kakaoCallback',
    });
  }

  // 아래는 데모를 위한 UI 코드입니다.
  /* displayToken()
  function displayToken() {
    var token = getCookie('authorize-access-token');
	
    if(token) {
      Kakao.Auth.setAccessToken(token);
      Kakao.Auth.getStatusInfo()
        .then(function(res) {
          if (res.status === 'connected') {
        	  alert('login success, token: ' + Kakao.Auth.getAccessToken());
            console.log('login success, token: ' + Kakao.Auth.getAccessToken());
            requestUserInfo();
          }
        })
        .catch(function(err) {
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
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }*/
</script>