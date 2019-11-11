<!-- config 내장 객체는 JSP페이지가 서블릿 클래스로 변환되어 서블릿 인스턴스가 생성될 때 참조해야 할
	 초기 설정 정보들을 저장해 놓은 객체입니다. 이러한 초기 설정 정보들은 웹 컨테이너가 구동될 때 자체적으로 생성
	 /관리되며 서블릿 당 1개만의 객체가 생성되며 같은 서블릿 인스턴스는 동일한 config객체를 참조하게 된다.
	 실행방법 : 1. 이클립스 Servers 뷰에서 start 선택
	 		 2. 브라우저에서 http://localhost:8088/JspProject/Ex/ConfigTest2 입력 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
<%
	
	String inputId = (String)request.getParameter("id");
	session.setAttribute("id", inputId);
    String id = config.getInitParameter("id");
    String inputPass = (String)request.getParameter("pass");
    session.setAttribute("pass", inputPass);
    String pass = config.getInitParameter("password");
    System.out.println(inputId +" " + id);
    System.out.println(inputPass +" " + pass);
    
    if(inputId.equals(id) && inputPass.equals(pass)) {
%>
	
	alert("로그인 성공");
	location.href = 'mainPage.jsp';
<%
    } else {
%>
	alert("로그인 실패");
	history.back()
<%
    }
%>
	
</script>
</table>
</div>
</body>
</html>