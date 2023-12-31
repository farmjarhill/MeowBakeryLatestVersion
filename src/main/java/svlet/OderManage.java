package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import DAO.DAO;
import enity.Oder;

/**
 * Servlet implementation class OderManage
 */
public class OderManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		DAO dao = new DAO();
		List<Oder> list =  dao.getAlloder();
		RequestDispatcher rd=request.getRequestDispatcher("ManageOrder.jsp");
		request.setAttribute("listoder", list);
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
