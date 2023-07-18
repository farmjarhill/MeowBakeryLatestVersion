package login;

import java.io.IOException;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		LoginDAO dao = new LoginDAO();
		Account a = dao.login(username, password);
		boolean usercheck= username != null && username.trim().length() != 0;
		boolean passcheck= password != null && password.trim().length() != 0;
		
		if(usercheck && passcheck) {
			if(a != null) {
				if(request.getParameter("remember") != null) {
					String remember=request.getParameter("remember");
					
					Cookie cusername=new Cookie("cuser", username.trim());
					Cookie cpassword=new Cookie("cpass", password.trim());
					Cookie cremember=new Cookie("crem", remember.trim());
					
					cusername.setMaxAge(60);
					cpassword.setMaxAge(60);
					cremember.setMaxAge(60);
					
					response.addCookie(cremember);
					response.addCookie(cpassword);
					response.addCookie(cusername);

					
				}
				HttpSession session=request.getSession();
				session.setAttribute("name", username);
				session.setAttribute("acc", a);
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
				
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				request.setAttribute("msg", "Wrong Username or Password");
				rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Username and Password are requiered");
			rd.forward(request, response);
		}
		


	}

}
