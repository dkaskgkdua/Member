<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
<%
	session.invalidate();
	
%>	
	alert('�α׾ƿ� �Ǿ���');
	location.href = 'mainPage.jsp';
</script>
</body>
</html>