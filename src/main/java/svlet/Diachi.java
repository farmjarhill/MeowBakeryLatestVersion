package svlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import enity.item;

/**
 * Servlet implementation class Diachi
 */
@WebServlet("/Diachi")
public class Diachi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session= request.getSession();
		String user = request.getParameter("user");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		List<item> cart = (List<item>) session.getAttribute("cart");
		
		boolean namecheck = name != null && name.trim().length() != 0;
		boolean phonecheck = phone != null && phone.trim().length() != 0;
		boolean addresscheck = address != null && address.trim().length() != 0;
		
		if (namecheck && phonecheck && addresscheck ) {
			
			LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
			String formattedDate = currentDate.format(formatter);
			
			
			session.setAttribute("name", name);
			session.setAttribute("phone", phone);
			session.setAttribute("address", address);
			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("Thankyou.jsp");
			rd.forward(request, response);
			System.out.print(" "+name +" "+ address +" "+ phone+ " "+ formattedDate+" "+user);
			
			try {
				for(int i =0; i < cart.size();i++) {
					
				String query="Insert into cart "+"(buyer,item_id,name,price,quantity) values "+ "(?,?,?,?,?)" ;
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, user);
				ps.setInt(2, cart.get(i).getId());
				ps.setString(3, cart.get(i).getName());
				ps.setDouble(4, cart.get(i).getPrice());
				ps.setInt(5, cart.get(i).getQuantity());
				
				ps.execute();
				

				
				
				}
				Double totalPrice = 0.0;
				for(int i =0; i < cart.size();i++) {
					totalPrice = totalPrice+ cart.get(i).getPrice();
				}
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
                String query="Insert into orders (customer,name,phone_number,address,amount,oder_date,status)" + "values(?,?,?,?,?,?,?)";
				
				PreparedStatement ps=con.prepareStatement(query);
				
			
				ps.setString(1, user);
				ps.setString(2, name);
				ps.setString(3, phone);
				ps.setString(4, address);
				ps.setString(5, Double.toString(totalPrice));
				ps.setString(6, formattedDate);
				ps.setString(7, "In the way");
				
				
				ps.execute();
			}
			catch(Exception e) {
				System.out.print(e);
			}
			
			
			

			}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			request.setAttribute("msg", "Có gì đó thiếu mất rồi, điền lại nhé <3");
			rd.forward(request, response);}
			}
		
		
	}

