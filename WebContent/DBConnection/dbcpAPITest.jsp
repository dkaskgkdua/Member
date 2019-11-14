<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- Connection 객체와 JNDI를 사용하기 위한 패키지를 import 한다. --%>
    <%-- 일반 데이터 베이스 작업을 위해 import한다. --%>
    <%@ page import = "java.sql.*" %>
    <%-- javax.sql.DataSource 객체를 사용하기 위해 import 한다. --%>
    <%@ page import = "javax.sql.*" %>
    <%-- JNDI 작업을 하기 위해 import 한다. --%>
    <%@ page import = "javax.naming.*" %>
    <%
    Connection conn = null;
    try {
    	Context init = new InitialContext();
    										//java:comp/env는 정해진 것이고 뒤에 있는 jdbc/OracleDB는 xml파일에 Context의 이름
    										//즉 두개를 일치시켜줘야 한다는 것!!
    	DataSource  ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
    	conn = ds.getConnection();
    	out.println("<h3>컨넥션 풀에 연결되었습니다.</h3>");
    	conn.close();
    } catch(Exception e) {
    	out.println("<h3>컨넥션 풀 연결에 실패하였습니다.</h3>");
    	e.printStackTrace();
    }
    
    %>
    
  