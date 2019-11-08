<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃 페이지</title>
</head>
<body>

	<%= session.getAttribute("id") %>님이 로그아웃 되었습니다.
	<%
		//세션 없애기	
		session.invalidate();
	%>
	<a href = "Member.html">로그인</a>
</body>
</html>