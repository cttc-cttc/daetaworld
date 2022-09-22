<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.share-btns {
		margin-bottom: 3rem;
	}
	.share-btns img {
		width: 3rem;
		height: 3rem;
		border-radius: 0.5rem;
	}
</style>
<div class="share-btns">
	<span><%@ include file="../../include/account/naver_share.jsp" %></span><!-- 네이버 공유버튼 -->
	<span><%@ include file="../../include/account/kakao_share.jsp" %></span><!-- 카카오 공유버튼 -->
	<span><%@ include file="../../include/account/facebook_share.jsp" %></span><!-- 페이스북 공유버튼 -->
	<span><%@ include file="../../include/account/twitter_share.jsp" %></span><!-- 트위터 공유버튼 -->
</div>