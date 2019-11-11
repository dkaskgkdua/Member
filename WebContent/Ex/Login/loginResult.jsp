<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<hr>
<div>
<% 
	if(session != null) {
	String id = (String)session.getAttribute("id");
	if(id != null && !id.equals("")) {
%>
<h3> 맛저하세요</h3>
<%
	} else{
%>
<h3>맛점하세요.</h3>
<%
	}
	}
%>
</div>