<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, inital-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">


<title>JSP AJAX 회원가입</title>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	function registerCheckFunction() {
		var userID = $('#userID').val();
		$ajax({
			type: 'POST',
			url: './UserRegisterCheckServlet',
			data: {userID: userID},
			succsess:function(result) {
				if(result == 1) {
					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
					$('#checkType').attr('class', 'modal-content panel-success');
					
				}
				else {
					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
					$('#checkType').attr('class', 'modal-content panel-warning');
				}
				$('#checkModal').modal("show");
			}
		})
		
	}
	function passwordCheckFunction(){
		var userPassword1 = $('#userPassword1'). val();
		var userPassword2 = $('#userPassword2'). val();
		if(userPassword1 != userPassword2) {
			$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
		}else {
			$('#passwordCheckMessage').html('');
		}
		
	}
</script>
</head>
<body>

	<div class="container">
		<form method="post" action="./userRegister">
			<table class="table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
			
			<thead>
				<tr>
					<th colspan="3"><h4>회원 등록 양식</h4>
					
				</tr>
			</thead>  
			<tbody>
				<tr>
					<td style="width: 110px;"><h5>아이디</h5></td>
					<td><input class="form-control" type="text" id="userID" name="userID" maxLength="20" placeholder="아이디를 입력해주세요."></td>
					<td style="widtsh: 110px;"><button class="btn btn-primary" onclick="registerCechFunction();" type="button">
					중복체크</button>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호</h5></td>
					<td colspan="2"><input class="form-control" type="password" id="userPassword1" name="userPassword1" maxLength="20" placeholder="비밀번호 입력해주세요."></td>
					
				</tr>
				<tr>
				<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
					<td colspan="2"><input class="form-control" type="password" id="userPassword2" name="userPassword2" maxLength="20" placeholder="비밀번호 확인을 입력해주세요."></td>
					</tr>
					
					<tr>
				<td style="width: 110px;"><h5>이름</h5></td>
					<td colspan="2"><input class="form-control" type="text" id="userName" name="userName" maxLength="20" placeholder="이름을 입력해주세요."></td>
					</tr>
					
					<tr>
				<td style="width: 110px;"><h5>나이</h5></td>
					<td colspan="2"><input class="form-control" type="password" id="userAge" name="userAge" maxLength="20" placeholder="나이를 입력해주세요."></td>
					</tr>
					<tr>
				<td style="width: 110px;"><h5>성별</h5></td>
					<td colspan="2">
					<div class="form-group" style="text-align: center; margin: 0 auto;">
						<div class="btn-group" data-toggle="buttons">
						
						<label class="btn btn-primary active">
						<<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자</
						</label>
						
						<label class="btn btn-primary">
						<<input type="radio" name="userGender" autocomplete="off" value="여자">여자</
						</label>
						
						</div>
						
					
					</div>
					
					</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td colspan="2"><input class="form-control" type="email" id="userEmail" name="userEmail" maxlength="20" placeholder="이메일을 입력해주세요."></td>
					</tr>
					<tr>
						
						 
						<td style="text-align: left" colspan="3" ><h5 style="color: red;" id="passwordCheckMessage"></h5><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
					</tr>
					
			</tbody>                                            
			 
			</table>
		</form>
	</div>
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");	
		}
		String messageType = null;
		if(session.getAttribute("messageType") != null) {
			messageContent = (String) session.getAttribute("messageContent");	
		}
		if(messageContent != null) {
			%>
			<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="vertical-alignment-helper">
					<div class="modal-dialog vertical-align-center">
						<div class="modal-content <% if(messageType.equals("오류 메시지")) out.println("panel-warning"); else out.println("panel-success"); %>">
							<div class="modal-header panel-heading">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span>
									<span class="sr-only" >Close</span>
								</button>
								<h4 class="modal-title">
									<%= messageType %>
								</h4>
								
							</div>
						
						<div class="modal-body">
							<%= messageContent %>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
				</div>
			
			</div>
			<script>
				$('messageModal').modal("show");
				
			
			
			</script>
			
			<%
			
				session.removeAttribute("messageContent");
				session.removeAttribute("messageType");
			 
			%>
			
						<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="vertical-alignment-helper">
					<div class="modal-dialog vertical-align-center">
						<div class="modal-content panel-info %>">
							<div class="modal-header panel-heading">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span>
									<span class="sr-only" >Close</span>
								</button>
								<h4 class="modal-title">
									확인 메시지
								</h4>
								
							</div>
						
						<div class="modal-body" id="checkMessage">
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary data-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
			</div>
			
			<% 
		}
	
	 %>

</body>
</html>