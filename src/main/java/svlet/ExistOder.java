package svlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import login.Account;
import java.io.IOException;
import java.util.List;

import DAO.DAO;
import enity.Oder;

/**
 * Servlet implementation class existOrder
 */
public class ExistOder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExistOder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		Account a = (Account) session.getAttribute("acc");
		String username = a.getUsername();
		DAO dao = new DAO();
		List<Oder> list = dao.getoderbyusername(username);
		request.setAttribute("listO",list);
		request.getRequestDispatcher("existOrder.jsp").forward(request, response);;
}
	protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
throws ServletException, IOException
{
processRequest(request, response);
}
@Override
protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
throws ServletException, IOException
{
processRequest(request, response);
}
@Override
public String getServletInfo()
{
return "Short description";
}}

