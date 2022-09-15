<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-xl-2 col-lg-3">
	<div class="dashboard-sidebar">
		<div class="dashboard-menu">
			<ul class="nav">
				<li>
					<h3>회원 관리</h3>
					<ul>
						<li><a id="employee_list" href="${contextPath }/admin/employee_list?page=1"><i class="lnr lnr-users"></i>구직자</a></li>
						<li><a id="employer_list" href="${contextPath }/admin/employer_list?page=1"><i class="lnr lnr-user"></i>구인자</a></li>
						<li><a id="blacklist" href="${contextPath }/admin/blacklist?page=1"><i class="lnr lnr-thumbs-down"></i>블랙리스트</a></li>
					</ul>
				</li>
				<li>
					<h3>신고 관리</h3>
					<ul>
						<li><a id="job_ads" href="${contextPath }/admin/job_ads?page=1"><i class="lnr lnr-briefcase"></i>구인공고</a></li>
						<li><a id="free_board" href="${contextPath }/admin/free_board?page=1"><i class="lnr lnr-file-empty"></i>자유게시판 글</a></li>
						<li><a id="free_comment" href="${contextPath }/admin/free_comment"><i class="lnr lnr-pencil"></i>자유게시판 댓글</a></li>
						<li><a id="temping_board" href="${contextPath }/admin/temping_board"><i class="lnr lnr-file-empty"></i>땜빵게시판 글</a></li>
						<li><a id="temping_comment" href="${contextPath }/admin/temping_comment"><i class="lnr lnr-pencil"></i>땜빵게시판 댓글</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<script>
window.onload = function() {
	switch("${leftMenu}") {
		case "employee_list":
			$("#employee_list").addClass("active");
			break;
		case "employer_list":
			$("#employer_list").addClass("active");
			break;
		case "blacklist":
			$("#blacklist").addClass("active");
			break;
		case "job_ads":
			$("#job_ads").addClass("active");
			break;
		case "free_board":
			$("#free_board").addClass("active");
			break;
		case "free_comment":
			$("#free_comment").addClass("active");
			break;
		case "temping_board":
			$("#temping_board").addClass("active");
			break;
		case "temping_comment":
			$("#temping_comment").addClass("active");
			break;
	}
}
</script>