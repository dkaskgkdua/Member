<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű���� import �Ѵ�. --%>
    <%-- �Ϲ� ������ ���̽� �۾��� ���� import�Ѵ�. --%>
    <%@ page import = "java.sql.*" %>
    <%-- javax.sql.DataSource ��ü�� ����ϱ� ���� import �Ѵ�. --%>
    <%@ page import = "javax.sql.*" %>
    <%-- JNDI �۾��� �ϱ� ���� import �Ѵ�. --%>
    <%@ page import = "javax.naming.*" %>
    <%
    Connection conn = null;
    try {
    	Context init = new InitialContext();
    										//java:comp/env�� ������ ���̰� �ڿ� �ִ� jdbc/OracleDB�� xml���Ͽ� Context�� �̸�
    										//�� �ΰ��� ��ġ������� �Ѵٴ� ��!!
    	DataSource  ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	out.println("<h3>���ؼ� Ǯ�� ����Ǿ����ϴ�.</h3>");
    	conn.close();
    } catch(Exception e) {
    	out.println("<h3>���ؼ� Ǯ ���ῡ �����Ͽ����ϴ�.</h3>");
    	e.printStackTrace();
    }
    
    %>
    
  