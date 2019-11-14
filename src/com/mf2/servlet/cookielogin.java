package com.mf2.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cookielogin")
public class cookielogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public cookielogin() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=euc-kr");
    	request.setCharacterEncoding("euc-kr");
    	
    	String cookie = request.getHeader("cookie");
    	String id = "";

    	if(cookie != null) {
    		Cookie[] cookies = request.getCookies();

    		for (int i = 0; i < cookies.length; i++) {
    			if (cookies[i].getName().equals("id")) {
    				id = cookies[i].getValue();
    			}
    		}
    	}
    	RequestDispatcher dispatcher = request.getRequestDispatcher("Ex/Login/LoginAc.jsp");
    	request.setAttribute("id", id);
    	dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		doGet(request, response);
	}

}
