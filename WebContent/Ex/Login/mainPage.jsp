<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
	span{background:yellow}
	footer{position:fixed;bottom:20px;width:100%}
	body > footer > h3 {background:lightgray;text-align:center}
</style>
<meta charset="EUC-KR">
<title>Include �׽�Ʈ</title>
</head>
<body>
	<%@ include file = "login.jsp" %>
	<h1>includeTest.jsp���� �Դϴ�.</h1>
	
	<footer>
	<%@ include file = "loginResult.jsp" %> 
	</footer>
</body>
</html>