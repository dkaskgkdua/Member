<!-- config ���� ��ü�� JSP�������� ���� Ŭ������ ��ȯ�Ǿ� ���� �ν��Ͻ��� ������ �� �����ؾ� ��
	 �ʱ� ���� �������� ������ ���� ��ü�Դϴ�. �̷��� �ʱ� ���� �������� �� �����̳ʰ� ������ �� ��ü������ ����
	 /�����Ǹ� ���� �� 1������ ��ü�� �����Ǹ� ���� ���� �ν��Ͻ��� ������ config��ü�� �����ϰ� �ȴ�.
	 ������ : 1. ��Ŭ���� Servers �信�� start ����
	 		 2. ���������� http://localhost:8088/JspProject/Ex/ConfigTest2 �Է� -->
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
	String inputId = (String)session.getAttribute("id");
    String id = config.getInitParameter("id");
    String inputPass = (String)session.getAttribute("pass");
    String pass = config.getInitParameter("password");
    System.out.println(inputId +" " + id);
    
    if(inputId.equals(id) && inputPass.equals(pass)) {
%>
	
	alert("�α��� ����");
	location.href = 'mainPage.jsp';
<%
    } else {
%>
	alert("�α��� ����");
	history.back()
<%
    }
%>
	
</script>
</table>
</div>
</body>
</html>