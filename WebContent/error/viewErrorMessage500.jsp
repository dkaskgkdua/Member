<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage = "true" %>
<%-- page ��Ƽ�� errorPage �Ӽ��� ����ؼ� ���� �������� �����ϸ� ������ ���� ��������
	 isErrorPage �Ӽ��� ���� true�̿��� �Ѵ�. 
	 isErrorPage = "true" : ���� �������� �������� �ǹ���
	 ������ �߻��� �� ������ ���� �������� ����ϰ� �ȴ�.
	 exception�� page ���ù����� ���� �������� ������ jsp���������� ���ܰ� �߻��� �� ���޵Ǵ�
	 java.lang.Throwable�� �ν��Ͻ��� ���� ���� �����̴�. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>500��</title>
</head>
<body>
	��Ÿ Ȯ���ض�
	500��
	<p>
	���� Ÿ�� : <%= exception.getClass().getName() %> <br>
	���� �޽���  : <b><%= exception.getMessage() %></b>
</body>
</html>