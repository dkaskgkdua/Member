<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>
<%-- page 디렉티브 errorPage 속성을 사용해서 에러 페이지를 지정하면 지정한 에러 페이지의
	 isErrorPage 속성의 값은 true이여야 한다. 
	 isErrorPage = "true" : 에러 페이지로 지정함을 의미함
	 에러가 발생할 때 지정한 에러 페이지를 사용하게 된다.
	 exception은 page 지시문에서 오류 페이지로 지정한 jsp페이지에서 예외가 발생할 때 전달되는
	 java.lang.Throwable의 인스턴스에 대한 참조 변수이다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러 발생 - viewErrorMessage.jsp</title>
</head>
<body>
	요청 처리 과정에서 에러가 발생하였음
	빠른 시간 내에 문제를 해결하도록 하겠음.
	Null
	<p>
	에러 타입 : <%= exception.getClass().getName() %> <br>
	에러 메시지  : <b><%= exception.getMessage() %></b>
</body>
</html>