package Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex/Member/memberDispatcherServlet")
public class memberDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public memberDispatcherServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
