<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<hr>
<div>
<% 
	if(session != null) {
	String id = (String)session.getAttribute("id");
	if(id != null && !id.equals("")) {
%>
<h3> �����ϼ���</h3>
<%
	} else{
%>
<h3>�����ϼ���.</h3>
<%
	}
	}
%>
</div>