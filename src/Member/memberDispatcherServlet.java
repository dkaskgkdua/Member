package Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ex/Member/memberDispatcherServlet")
public class memberDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public memberDispatcherServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String EMail = request.getParameter("email");
		String domain = request.getParameter("domain");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("MemberResult.jsp");
		HttpSession session = request.getSession();
		request.setAttribute("id", id);
		request.setAttribute("pass", password);
		request.setAttribute("jumin1", jumin1);
		request.setAttribute("jumin2", jumin2);
		request.setAttribute("email", EMail);
		request.setAttribute("domain", domain);
		request.setAttribute("gender", gender);
		request.setAttribute("hobby", hobby);
		request.setAttribute("post1", post1);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);
		
		dispatcher.forward(request, response);
		
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String password = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String EMail = request.getParameter("email");
		String domain = request.getParameter("domain");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String hob ="";
		for(int i = 0; i < hobby.length; i++) {
			hob += hobby[i];
		}
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		
		
		if(id.equals("Java") && password.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("jumin1", jumin1);
			session.setAttribute("jumin2", jumin2);
			session.setAttribute("email", EMail);
			session.setAttribute("domain", domain);
			session.setAttribute("gender", gender);
			session.setAttribute("hobby", hob);
			session.setAttribute("post1", post1);
			session.setAttribute("address", address);
			session.setAttribute("intro", intro);
			
			out.println("<script>");
			out.println("alert('"+id +"님이 로그인에 성공하셨습니다.')");
			out.println("location.href = 'MemberResult.jsp'");
			out.println("</script>");
		
			//response.sendRedirect("MemberResult.jsp");
		}
		else if(id.equals("Java")) {
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 안흔다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}  else {
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않는다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
		//doGet(request, response);
	}

}
