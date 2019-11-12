<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "beans.BeanTest" %>
    <% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="beantest" class ="beans.BeanTest"/>
	<jsp:setProperty name="beantest" property = "*"/>
	<%-- 위 코드와 아래 전부 코드가 같다.
	<jsp:setProperty name="beantest" property = "id" param="id"/>
	<jsp:setProperty name="beantest" property = "password" param="password"/>
	<jsp:setProperty name="beantest" property = "name" param="name"/>
	<jsp:setProperty name="beantest" property = "gender" param="gender"/>
	<jsp:setProperty name="beantest" property = "age" param="age"/>
	<jsp:setProperty name="beantest" property = "email" param="email"/>
	 --%>
	<h3><jsp:getProperty name = "beantest" property="id"/></h3>
	<h3><jsp:getProperty name = "beantest" property="password"/></h3>
	<h3><jsp:getProperty name = "beantest" property="name"/></h3>
	<h3><jsp:getProperty name = "beantest" property="gender"/></h3>
	<h3><jsp:getProperty name = "beantest" property="age"/></h3>
	<h3><jsp:getProperty name = "beantest" property="email"/></h3>
</body>
</html>