package logout;


import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpSession;
/**
 * Servlet implementation class Logout
 */
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie cusername=new Cookie("cuser", null);
		Cookie cpassword=new Cookie("cpass", null);
		Cookie cremember=new Cookie("crem", null);
		cusername.setMaxAge(0);
		cpassword.setMaxAge(0);
		cremember.setMaxAge(0);
		response.addCookie(cusername);
		response.addCookie(cpassword);
		response.addCookie(cremember);
		
		HttpSession session=request.getSession();
		session.invalidate();
		
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		request.setAttribute("msg", "Logout successfully");
		rd.forward(request, response);	}

}
