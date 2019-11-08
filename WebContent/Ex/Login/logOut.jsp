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
	alert('로그아웃 되었음');
	location.href = 'mainPage.jsp';
</script>
</body>
</html>