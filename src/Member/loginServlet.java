package Member;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		String id = request.getParameter("id");
		String password = request.getParameter("pass");
		
		
		
		/* �ΰ� ���� ó���� �������.
		 * if(id == null) {
		 * 	System.out.println("null �Դϴ�.");
		 * }
		 * if(id.equals("") {
		 * 	System.out.println("�����Դϴ�.");
		 * }
		 * */
		
		
		PrintWriter out = response.getWriter();
		
		if(id.equals("Java") && password.equals("java")) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("pass", password);
			out.println("<script>");
			out.println("alert('"+id +"���� �α��ο� �����ϼ̽��ϴ�.')");
			out.println("location.href = 'mainPage.jsp'");
			out.println("</script>");
			//  out ��� ���������� ȭ�� �̵��� �����ϴ�
			//  response.sendRedirect("mainPage.jsp");
		}
		else if(id.equals("Java")) {
			out.println("<script>");
			out.println("alert('��й�ȣ�� ��ġ���� �����.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}  else {
			out.println("<script>");
			out.println("alert('��й�ȣ�� ��ġ���� �ʴ´�.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
		//doGet(request, response);
	}

}