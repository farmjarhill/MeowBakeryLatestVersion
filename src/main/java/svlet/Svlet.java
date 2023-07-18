package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import enity.Category;
import enity.model;
import DAO.DAO;

/**
 * Servlet implementation class Svlet
 */
public class Svlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		DAO dao = new DAO();
		List<model> list =  dao.getProducts();
		List<Category> listca =  dao.getAllCategory();
		RequestDispatcher rd=request.getRequestDispatcher("Test.jsp");
		request.setAttribute("listc", list);
		request.setAttribute("listca", listca);
		rd.forward(request, response);
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

