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
		<td>���̵�</td>
		<td><input type="text" id = "id" name = "id"></td>
	</tr>
	<tr>
		<td>��й�ȣ</td>
		<td><input type="password" id = "password" name = "password"></td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td><input type="text" id = "name" name = "name"></td>
	</tr>
	<tr>
		<td>����</td>
		<td>
			<input type="radio" name = "gender" value = "male">����
			<input type="radio" name = "gender" value = "female">����
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td><input type="text" id = "age" name = "age"></td>
	</tr>
	<tr>
		<td>�̸����ּ�</td>
		<td><input type="email" id = "email" name = "email"></td>
	</tr>

</table>
<input type = "submit" value = "����">
<input type = "reset" value = "�ٽ� �ۼ�">
</form>
</body>
</html>