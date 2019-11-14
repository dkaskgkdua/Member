<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import ="java.util.List" %>
  <%@ page import ="java.util.ArrayList" %>
 <%@ page import ="com.mf2.vo.Member" %>
 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class ="container"></div>
<table class ="table">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>가입날짜</th>
	</tr>

<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("memberList");

   for(int i =0; i < list.size(); i++) {
%>		
	
	<tr>
		<td> <%= list.get(i).getId()%></td>
		<td> <%= list.get(i).getPass()%></td>
		<td> <%= list.get(i).getName()%></td>
		<td> <%= list.get(i).getReg_date()%></td>
<%
	if(!list.get(i).getId().equals("admin")) {%>
		<td><button class = "btn btn-primary"
					onclick = "location.href='delete?id =<%=list.get(i).getId()%>'">삭제</button>
<%
	} else {
%>
	<td></td>
<%
	} 
%>
	</tr>
<%		
	}
%>
	


</table>
</body>
</html>