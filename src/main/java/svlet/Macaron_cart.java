package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import enity.item;

/**
 * Servlet implementation class Macaron_cart
 */
public class Macaron_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 @SuppressWarnings("unchecked")
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			HttpSession session = request.getSession();
			int id= Integer.parseInt(request.getParameter("id")) ;
			String name = request.getParameter("name");
			Double price = Double.parseDouble(request.getParameter("price")) ;
			String image= request.getParameter("image");
			String username= request.getParameter("username");
			
			
			
			
			if (session.getAttribute("cart") == null) {
			List<item> cart =  new ArrayList<>();
			int quantity = 1;
			cart.add(new item(id,name,price,image,quantity));
			session.setAttribute("cart", cart);
			
			}
			
			
			
			else {
			List<item> cart = (List<item>) session.getAttribute("cart");
			int index = isExisting(request.getParameter("id"), cart);
			if (index == -1) {
				int quantity = 1;
				cart.add(new item(id,name,price,image,quantity));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				price = cart.get(index).getPrice() + price;
				cart.get(index).setQuantity(quantity);
				cart.get(index).setPrice(price);
			}
			session.setAttribute("cart", cart);
           
			
			}
			
		
            
			
			RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
	    }
	 
	
	
private int isExisting(String id, List<item> cart) {
	for (int i = 0; i < cart.size(); i++) {
		if (Integer.toString(cart.get(i).getId()).equalsIgnoreCase(id)) {
			return i;
		}
	}
	return -1;
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
