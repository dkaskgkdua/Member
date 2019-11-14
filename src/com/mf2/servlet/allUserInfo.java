package com.mf2.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mf2.dao.MemberDAO;
import com.mf2.vo.Member;

/**
 * Servlet implementation class allUserInfo
 */
@WebServlet("/allUserInfo")
public class allUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public allUserInfo() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		Member mem = new Member();
		ArrayList<Member> list = dao.user_info_select();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Ex/Login/user_infoList.jsp");
		request.setAttribute("memberList", list);
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
