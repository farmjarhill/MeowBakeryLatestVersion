package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import DAO.DAO;
import enity.Cart;
/**
 * Servlet implementation class AllProductO
 */
public class AllProductO extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllProductO() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
        protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		response.setContentType("text/html");
    		DAO dao = new DAO();
    		List<Cart> list =  dao.getProductsOrder();
    		RequestDispatcher rd=request.getRequestDispatcher("item.jsp");
    		request.setAttribute("listc", list);
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
