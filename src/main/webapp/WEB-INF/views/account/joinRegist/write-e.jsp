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

		<!--// 회원가입 -->
		<div id="content">
			<div class="monLeave monUserJoin joinPerson">
				<br><br><br><br>
				<h1 style="padding: 5rem;">개인회원 가입</h1>

				<form action="register" method="post" enctype="multipart/form-data">
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
					<div class="inner1">
						<div class="step3">
							<div class="tbLeave tbJoin">
								<table>
									<tr>
										<td colspan="2" class="tLine"></td>
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
							<button type="button" onclick="joinform_check()">
								<img src="${contextPath}/resources/images/btn_user_join0.png" alt="가입하기">
							</button>
						</div>
					</div>
					<input type="hidden" name="m_type" value="1">
				</form>
			</div>
		</div>
		<!-- 회원가입 끝 //-->

		<!-- footer -->
		<%@ include file="../../include/footer.jsp" %>

	</div>
	<!-- 문서 끝에 js를 배치하여 페이지 로딩 속도 향상 -->
	<%@ include file="../../include/plugin.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${contextPath}/resources/custom_js/account/register.js"></script>
	
</body>
</html>