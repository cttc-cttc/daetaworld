<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png" width="35"
    alt="카카오 로그인 버튼" />
</a>

<script>
  Kakao.init('d6140eb0f3d4e274049880e659b9d48b'); // 사용하려는 앱의 JavaScript 키 입력
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8088/deataworld/kakaoCallback',
      state: 'userme',
    });
  }
</script>