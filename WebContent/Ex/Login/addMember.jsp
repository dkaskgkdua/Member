<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 	
	if(session != null) {	
String id = (String)session.getAttribute("id");
		if(id != null && !id.equals("")) {
%>
<%
		} else {
%>	
			<a href = "/Member/login_add_Member">회원가입</a>
<%
		}
	}
%>	