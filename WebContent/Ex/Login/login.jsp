<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
	div{padding:1%; text-align:right; background-color:green; color:white}
	a{text-decoration:none; color:white}
	a:hover{font-weight:bold}
	div:hover{opacity : 0.8}
</style>
<div>
<% 	
	if(session != null) {	
String id = (String)session.getAttribute("id");
		if(id != null && !id.equals("")) {
%>
			<%=id %>���� �α��� �Ǿ����ϴ�.
			<a href = "logOut.jsp">(�α׾ƿ�)</a>
<%
		} else {
%>	
			<a href = "Login.html">�α���</a>
<%
		}
	}
%>	
</div>
<hr>