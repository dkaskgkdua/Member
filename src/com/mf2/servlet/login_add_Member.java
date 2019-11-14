package com.mf2.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mf2.dao.MemberDAO;
import com.mf2.vo.Member;

/**
 * Servlet implementation class login_add_Member
 */
@WebServlet("/login_add_Member")
public class login_add_Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public login_add_Member() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Ex/Login/login_addMember.jsp");
		dispatcher.forward(request, response);
		
		//response.sendRedirect("Ex/Login/login_addMember.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pass"));
		member.setName(request.getParameter("name"));

		MemberDAO dao = new MemberDAO();
		
		try { 
			int result = dao.insert(member);
			if(result == 1)
				response.sendRedirect("cookielogin");
		} catch (SQLException e) {
			RequestDispatcher dis = request.getRequestDispatcher("jsp/error.jsp");
			request.setAttribute("errorMsg", "SQL문 장애발생으로 데이터 입력 실패");
			dis.forward(request, response);
		}
	}

}
