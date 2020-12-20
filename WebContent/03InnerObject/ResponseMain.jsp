<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03InnerObject > ResponseMain.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 404에러 : 파일이나 경로를 찾을수 없을때 뜸 -->
	<h2>sendRedirect테스트(if문 사용하기)</h2>
	<form action="./ResponseSendRedirect.jsp" method="post">
	<table border="1" width='300'>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="user_id" />
			</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>
				<input type="text" name="user_pwd" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="확인" />
			</td>
		</tr>
	</table>
	</form>
	
	
	
	<h2>sendRedirect테스트(JDBC 사용하기)</h2>
	<form action="./ResponseJDBC.jsp" method="post">
	<table border="1" width='300'>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="user_id" />
			</td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td>
				<input type="text" name="user_pwd" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="확인" />
			</td>
		</tr>
	</table>
	</form>
	
	
	
</body>
</html>