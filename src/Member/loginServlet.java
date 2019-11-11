package Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Ex/Login/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public loginServlet() {
        super();
      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");
		ServletConfig config = this.getServletConfig();
		ServletContext context = config.getServletContext();
		
		String repassword = request.getParameter("pass");
		String reid = request.getParameter("id");
		
		
		/* 널과 공백 처리를 해줘야함.
		 * if(id == null) {
		 * 	System.out.println("null 입니다.");
		 * }
		 * if(id.equals("") {
		 * 	System.out.println("공백입니다.");
		 * }
		 * */
		
		
		PrintWriter out = response.getWriter();
		
		if(reid.equals("jsp") && repassword.equals("jsp")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", reid);
			session.setAttribute("pass", repassword);
			out.println("<script>");
			out.println("alert('"+reid +"님이 로그인에 성공하셨습니다.')");
			out.println("location.href = 'mainPage.jsp'");
			out.println("</script>");
			//  out 대신 리스폰스로 화면 이동도 가능하다
			//  response.sendRedirect("mainPage.jsp");
		}
		else if(reid.equals("Java")) {
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않는다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}  else {
			out.println("<script>");
			out.println("alert('아이디가 일치하지 않는다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
		//doGet(request, response);
	}

}
