<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> �ڹٺ� ���� </h1>
	<jsp:useBean id="beantest" class ="beans.BeanTest" scope="page"/>
	<jsp:setProperty name="beantest" property = "name" value ="���̿�����"/>
	<h3><jsp:getProperty name = "beantest" property="name"/></h3>
</body>
</html>