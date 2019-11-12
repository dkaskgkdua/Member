<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action = "BeanTest1.jsp" method = "post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" id = "id" name = "id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" id = "password" name = "password"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" id = "name" name = "name"></td>
	</tr>
	<tr>
		<td>성명</td>
		<td>
			<input type="radio" name = "gender" value = "male">남성
			<input type="radio" name = "gender" value = "female">여성
		</td>
	</tr>
	<tr>
		<td>나이</td>
		<td><input type="text" id = "age" name = "age"></td>
	</tr>
	<tr>
		<td>이메일주소</td>
		<td><input type="email" id = "email" name = "email"></td>
	</tr>

</table>
<input type = "submit" value = "가입">
<input type = "reset" value = "다시 작성">
</form>
</body>
</html>