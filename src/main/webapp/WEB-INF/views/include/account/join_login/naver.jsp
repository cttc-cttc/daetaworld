<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>네이버 로그인</title>
  </head>
  <body>
    <!-- 네이버아이디로로그인 버튼 노출 영역 -->
    <div id="naverIdLogin"></div>
    <!-- //네이버아이디로로그인 버튼 노출 영역 -->
  </body>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
  <script type="text/javascript">
    var naverLogin = new naver.LoginWithNaverId({
      clientId: 'eiV54Jtq4SI3YzMlgZcF',
      callbackUrl: 'http://localhost:8088/deataworld/naverCallback',
      isPopup: false /* 팝업을 통한 연동처리 여부 */,
      loginButton: { color: 'green', type: 1, height: 35 } /* 로그인 버튼의 타입을 지정 */,
    });

    /* 설정정보를 초기화하고 연동을 준비 */
    naverLogin.init();
  </script>
</html>
