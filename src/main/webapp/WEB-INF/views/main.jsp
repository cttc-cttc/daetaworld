<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style>
	.job-recommendation {
		text-align: center;
		font-size: 20px;
	}
	.job-rec-item {
		margin: 2.5rem 0;
	}
</style>
</head>
<body>
	<%@ include file="./include/header.jsp"%>
	<div class="container theme-showcase" role="main">
		<!-- 긴급 구인 -->
		<div class="col-sm-8">
			<div class="panel panel-danger">
				<div class="panel-heading">
					<h3 class="panel-title">긴급 구인</h3>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item">인천 서구 00동 00갈비</a>
		            <a href="#" class="list-group-item">서울 마포구 00동 00주유소</a>
		            <a href="#" class="list-group-item">경기 수원시 장안구 00동 00인테리어</a>
		            <a href="#" class="list-group-item">급구4</a>
		            <a href="#" class="list-group-item">급구5</a>
				</div>
			</div>
		</div>
		<!-- 직업 추천 -->
		<div class="col-sm-4">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">직업 추천</h3>
				</div>
				<div class="panel-body job-recommendation">
					<label class="job-rec-item">오늘의 추천 직업을 알아보세요!</label><br>
					<button type="button" class="btn btn-lg btn-info job-rec-item" id="modalBtn">체크리스트 확인</button>
				</div>
			</div>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="checkListModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-th-list"></span> modal header
						</h4>
					</div>
					<div class="modal-body">
						<div style="height: 500px;">
							modal body
							<ul>
								<li>항목1</li>
								<li>항목2</li>
								<li>항목3</li>
								<li>항목4</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						modal footer
						<button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
					</div>
				</div>

			</div>
		</div>

		<!-- 일반 구인 -->
		<div class="col-sm-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">일반 구인</h3>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item">인천 서구 00동 00갈비</a>
		            <a href="#" class="list-group-item">서울 마포구 00동 00주유소</a>
		            <a href="#" class="list-group-item">경기 수원시 장안구 00동 00인테리어</a>
		            <a href="#" class="list-group-item">급구4</a>
		            <a href="#" class="list-group-item">급구5</a>
				</div>
			</div>
		</div>
		<!-- 랭킹 -->
		<div class="col-sm-4">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<h3 class="panel-title">별점 랭킹</h3>
				</div>
				<ul class="list-group">
					<li class="list-group-item">1등 : afljkk <span class="badge">4.6</span></li>
					<li class="list-group-item">2등 : afljkk <span class="badge">4.4</span></li>
					<li class="list-group-item">3등 : afljkk <span class="badge">3.8</span></li>
					<li class="list-group-item">4등 : afljkk <span class="badge">3.5</span></li>
					<li class="list-group-item">5등 : afljkk <span class="badge">3.2</span></li>
				</ul>
			</div>
		</div>
		<!-- 돌봄 -->
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">돌봄 구인</h3>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item">인천 서구 00동 00어린이집</a>
		            <a href="#" class="list-group-item">서울 마포구 00동 00키즈카페</a>
		            <a href="#" class="list-group-item">경기 수원시 장안구 00동 00어린이집</a>
		            <a href="#" class="list-group-item">급구4</a>
		            <a href="#" class="list-group-item">급구5</a>
				</div>
			</div>
		</div>
		<!-- 농어촌 -->
		<div class="col-sm-6">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">농어촌 구인</h3>
				</div>
				<div class="list-group">
					<a href="#" class="list-group-item">adfjalsjfkl</a>
		            <a href="#" class="list-group-item">aklksjflksjdlfk</a>
		            <a href="#" class="list-group-item">sjflasjdflkj</a>
		            <a href="#" class="list-group-item">afklsajdfkls</a>
		            <a href="#" class="list-group-item">asjflkjdskfjlk</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="./include/footer.jsp"%>
	
<script>
	$(document).ready(function() {
		$("#modalBtn").click(function() {
			$("#checkListModal").modal();
		});
	});
	
	function logout() {
		location.href = 'logout';
	}
</script>
</body>
</html>