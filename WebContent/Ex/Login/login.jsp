<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 	
	if(session != null) {	
String id = (String)session.getAttribute("id");
		if(id != null && !id.equals("")) {
%>
			<a href = "logOut.jsp">(로그아웃)</a>
<%
		} else {
%>	
			<a href = "LoginAc.jsp">로그인</a>
<%
		}
	}
%>	