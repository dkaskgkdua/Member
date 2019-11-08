<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel = "stylesheet" type="text/css" href="CSS/MemberResultCSS.css">
<title>회원가입 결과</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

<%
String id = (String)session.getAttribute("id");
String pass = (String)session.getAttribute("pass");
String jumin1 = (String)session.getAttribute("jumin1");
String jumin2 = (String)session.getAttribute("jumin2");
String email = (String)session.getAttribute("email");
String hobby = (String)session.getAttribute("hobby");
String domain = (String)session.getAttribute("domain");
String gender = (String)session.getAttribute("gender");
String post1 = (String)session.getAttribute("post1");
String address = (String)session.getAttribute("address");

%>

</script>
</head>

<body>

<table>
<thead>
<tr>
	<th>속성</th>
	<th>데이터</th>
</tr>
<tr>
	<td>id</td>
	<td><%=id %></td>
</tr>
<tr>
	<td>pass</td>
	<td><%=pass %></td>
</tr>
<tr>
	<td>email</td>
	<td><%=email %></td>
</tr>
<tr>
	<td>domain</td>
	<td><%=domain %></td>
</tr>
<tr>
	<td>gender</td>
	<td><%=gender %></td>
</tr>
<tr>
	<td>hobby</td>
	<td><%=hobby %></td>
</tr>

<tr>
	<td>post1</td>
	<td><%=post1 %></td>
</tr>
<tr>
	<td>address</td>
	<td><%=address %></td>
</tr>


</thead>
</table>
<a href ="logout.jsp">로그아웃</a>
</body>
</html>