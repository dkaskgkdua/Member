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
	
	String inputId = (String)request.getParameter("id");
	
    String id = config.getInitParameter("id");
    String inputPass = (String)request.getParameter("pass");
    
    String pass = config.getInitParameter("password");
    System.out.println(inputId +" " + id);
    System.out.println(inputPass +" " + pass);
    
    if(inputId.equals(id) && inputPass.equals(pass)) {
%>
	session.setAttribute("id", inputId);
	session.setAttribute("pass", inputPass);
	alert("�α��� ����");
	location.href = 'templateTest.jsp';
<%
    } else if(inputId.equals(id)){
%>	
	alert("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
	history.back()
<%
    } else {
%>
	alert("���̵� Ʋ�Ƚ��ϴ�.")
	history.back()
<%
    }
%>	
</script>
</table>
</div>
</body>
</html>