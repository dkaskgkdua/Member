<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" type="text/css" href="CSS/MemberResultCSS.css">
<title>회원가입 결과</title>
</head>
<%
	String id = (String)request.getAttribute("id");
	String pass = (String)request.getAttribute("pass");
	String jumin1 = (String)request.getAttribute("jumin1");
	String jumin2 = (String)request.getAttribute("jumin2");
	String email = (String)request.getAttribute("email");
	String domain = (String)request.getAttribute("domain");
	String gender = (String)request.getAttribute("gender");
	String post1 = (String)request.getAttribute("post1");
	String address = (String)request.getAttribute("address");
%>
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
	<td>hobby</td><td>
<% 
	String[] hobbys = (String[])request.getAttribute("hobby");
	for(int i =0; i < hobbys.length; i++) {
%>
	<%=hobbys[i] + " "%>
<% 
	}
%>
	</td>
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
</body>
</html>