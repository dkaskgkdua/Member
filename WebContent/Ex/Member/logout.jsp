<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ� ������</title>
</head>
<body>

	<%= session.getAttribute("id") %>���� �α׾ƿ� �Ǿ����ϴ�.
	<%
		//���� ���ֱ�	
		session.invalidate();
	%>
	<a href = "Member.html">�α���</a>
</body>
</html>