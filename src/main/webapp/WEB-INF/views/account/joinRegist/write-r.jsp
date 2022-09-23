<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<title>오늘의 대타</title>
<%@ include file="../../include/head.jsp" %>
<!-- custom css -->
<link rel="stylesheet" href="${contextPath}/resources/custom_css/account/moncss1.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/account/moncss2.css">
<link rel="stylesheet" href="${contextPath}/resources/custom_css/account/register.css">

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
        		<h1>사업체회원 가입</h1>

				<form action="register" method="post" enctype="multipart/form-data">          
					<!--// 동의 -->
					<div class="agree_check">
						<div class="user_join_agree">
							<input type="checkbox" name="check_all" id="check_all" onclick="checkAll()"><label for="check_all">필수동의 항목 및 [선택] 개인정보 수집 및 이용동의, [선택] 광고성 정보 이메일/SMS 수신 동의에 일괄 동의합니다.</label>
						</div>
						<div class="join_dot"></div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="agree1" id="agree1"><label for="agree1"><span>[필수]</span> 만 15세 이상입니다</label>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="agree2" id="agree2"><label for="agree2"><span>[필수]</span> 서비스 이용약관 동의</label>
							<div class="toggle_terms">
								<a data-toggle="modal" data-target="#modal_terms1">내용보기</a>
							</div>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="agree3" id="agree3"><label for="agree3"><span>[필수]</span> 개인정보 수집 및 이용 동의</label>
							<div class="toggle_terms">
								<a data-toggle="modal" data-target="#modal_terms2">내용보기</a>
							</div>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="terms1" id="agree4" value="on"><label for="agree4"><span class="select">[선택]</span> 개인정보 마케팅 활용 동의</label>
							<div class="toggle_terms">
								<a data-toggle="modal" data-target="#modal_terms3">내용보기</a>
							</div>
						</div>
						<div class="user_join_agree agrSelect">
							<input type="checkbox" name="terms2" id="agree5" value="on"><label for="agree5"><span class="select">[선택]</span> 광고성 정보 이메일/SMS 수신 동의 <br>
							<span class="promotion_type">(알바 뉴스레터, 소식 및 광고메일, 휴대폰 알림)</span></label>
							<div class="toggle_terms">
								<a data-toggle="modal" data-target="#modal_terms4">내용보기</a>
							</div>
						</div>
					</div>
					<%@ include file="../../include/account/terms.jsp" %><!-- 약관 내용 -->
					<!-- 동의 끝 //-->
					<div class="inner">
						<div class="step3">
							<div class="tbLeave tbJoin">
								<table>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
									<tr>
										<th>프로필 사진</th>
										<td class="single-input mb-25">
											<label class="file-label" for="chooseFile"> 사진 등록</label><br>
											<input class="file" name="chooseFile" id="m_picture" type="file" accept="image/png, image/jpeg, image/gif">
										</td>
									</tr>
									<tr>
										<th>닉네임<span>&nbsp;*</span></th>
										<td>
											<input type="text" name="m_nick" id="m_nick" class="tBox tPwd" maxlength="8" placeholder="2~8자 한글, 영문, 숫자">
											<span id="veriChkNick" class="veri-color"></span>
										</td>
										<td><input type="button" class="btn btn-success btn-sm" id="m_nickChk" onclick="m_nickCheck()" value="중복검사"></td>
									</tr>
									<tr>
										<th>아이디<span>&nbsp;*</span></th>
										<td>
											<input type="text" name="m_id" id="m_id" class="tBox tPwd" maxlength="16" placeholder="6~16자 영문, 숫자">
											<span id="veriChkId" class="veri-color"></span>
										</td>
										<td><input type="button" class="btn btn-success btn-sm" id="m_idChk" onclick="m_idCheck()" value="중복검사"></td>
									</tr>
									<tr>
										<th>비밀번호<span>&nbsp;*</span></th>
										<td>
											<input type="password" name="m_password" id="m_password" class="tBox tPwd" maxlength="16" placeholder="8~16자 영문 + 숫자 + 특수문자 조합">
											<p class="compul" id="pwdSafeResult"></p>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인<span>&nbsp;*</span></th>
										<td>
											<input type="password" id="password2" class="tBox tPwd" maxlength="16" placeholder="비밀번호 재입력">
											<p class="compul" id="pwdConfirm"></p>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
									<tr>
										<th>이름<span>&nbsp;*</span></th>
										<td><input type="text" name="m_name" id="m_name" class="tBox" maxlength="12" placeholder="이름"></td>
									</tr>
									<tr>
										<th>나이<span>&nbsp;*</span></th>
										<td><input type="text" name="m_age" id="m_age" class="tBox" maxlength="3" placeholder="나이"></td>
									</tr>
									<tr>
										<th>성별<span>&nbsp;*</span></th>
										<td>
											<label><input type="radio" name="m_gender" value="남" checked>남성</label>
											<label><input type="radio" name="m_gender" value="여">여성</label>
										</td>
									</tr>
									<tr>
										<th>이메일<span>&nbsp;*</span></th>
										<td>
											<input type="text" name="m_email" id="m_email" class="tBox" maxlength="30" placeholder="이메일">
											<span id="veriChkEmail" class="veri-color"></span>
										</td>
										<td><input type="button" class="btn btn-success btn-sm" id="mail-check-btn" value="인증"></td>
									</tr>
									<tr>
										<th></th>
										<td>
											<input type="text" class="tBox mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" maxlength="6" disabled="disabled"><br>
											<span id="mail-check-warn"></span>
										</td>
									</tr>
									<tr>
										<td colspan="2" class="tLine"></td>
									</tr>
									<tr>
										<th>휴대폰 번호<span>&nbsp;*</span></th>
										<td><input type="text" name="m_phone" id="m_phone" maxlength="13" placeholder="000-0000-0000" class="tBox"></td>
									</tr>
									<tr>
										<th class="tbPt">사업체 주소<span>&nbsp;*</span></th>
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
						<div class="btnBx">
							<button type="button" onclick="joinform_check()">
								<img src="${contextPath}/resources/images/btn_user_join0.png" alt="가입하기">
							</button>
						</div>
					</div>
					<input type="hidden" name="m_type" value="2">
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