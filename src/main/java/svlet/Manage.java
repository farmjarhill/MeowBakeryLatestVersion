package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import DAO.DAO;
import enity.Category;
import enity.model;

/**
 * Servlet implementation class Manage
 */
public class Manage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			DAO dao = new DAO();
			List<model> list1 =  dao.getProducts();
			List<Category> listca =  dao.getAllCategory();
			RequestDispatcher rd=request.getRequestDispatcher("Manage2.jsp");
			request.setAttribute("listp", list1);
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

