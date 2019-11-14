package com.mf2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mf2.dao.MemberDAO;
import com.mf2.vo.Member;

/**
 * Servlet implementation class login_ok_cookie
 */
@WebServlet("/login_ok_cookie")
public class login_ok_cookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public login_ok_cookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		Cookie cookie = new Cookie("id", request.getParameter("id"));
		String form_Id = (String)request.getParameter("id");
		String form_pass = (String)request.getParameter("pass");
		String inputCheck = (String)request.getParameter("remember");
		PrintWriter out = response.getWriter();
		
		if(inputCheck == null) {
    		cookie.setMaxAge(0);
    		response.addCookie(cookie);
    	} else {
    		cookie.setMaxAge(2*60);
    		response.addCookie(cookie);
    	}
		MemberDAO dao = new MemberDAO();
		try {
			int result = dao.loginSelect(form_Id, form_pass);
			// member = dao.loginSelect(form_Id);
			if(result == 1) {
				HttpSession session = request.getSession();
		    	session.setAttribute("id", form_Id);
		    	out.write("<script>");
		    	out.write("alert('" + form_Id+ "님 환영합니다.');");
		    	out.write("location.href='Ex/Login/templateTest.jsp'");
		    	out.write("</script>");
			} else if(result == 0){
				out.write("<script>");
		    	out.write("alert('비밀번호 틀림');");
		    	out.write("location.href='cookielogin'");
		    	out.write("</script>");
			} else {
				out.write("<script>");
		    	out.write("alert('아이디 틀림');");
		    	out.write("location.href='cookielogin'");
		    	out.write("</script>");
			}
		} catch(Exception e2) {
			RequestDispatcher dis = request.getRequestDispatcher("jsp/error.jsp");
			request.setAttribute("errorMsg", "SQL문 장애발생으로 데이터 입력 실패");
			dis.forward(request, response);
		} 
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
