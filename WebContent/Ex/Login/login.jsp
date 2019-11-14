<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 	
	if(session != null) {	
		String id = (String)session.getAttribute("id");
		if(id != null && !id.equals("")) {
%>
			<li><a href = "/Member/Logout">(로그아웃)</a></li>
			<li><a href = "/Member/info">My Page</a></li>
			<li><button id = "cart" type ="button" class = "btn btn-secondary"><span class = "glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></button></li>
<%
			if( id.equals("admin")) {
%>
			<li><a href = "/Member/allUserInfo">모든 회원 정보</a></li>
<%				
			}
		} else {
%>				<li><a href = "/Member/cookielogin">로그인</a></li>
		
<%
		}
	} else {
		response.sendRedirect("cookielogin");
	}
%>	