package registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		boolean emailcheck = email != null && email.trim().length() != 0;
		boolean namecheck = username != null && username.trim().length() != 0;
		boolean passcheck = password != null && password.trim().length() != 0;

		if (emailcheck && namecheck && passcheck) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/custormer?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
						"root", "Vqa0362244188:>>");
				String query = "Insert into user (email,username,password,role)" + "values(?,?,?,0)";
				String query2 = "Select * from user where username=? and email=? ";

				PreparedStatement ps2 = con.prepareStatement(query2);
				ps2.setString(1, username);
				ps2.setString(2, email);
				ResultSet rs = ps2.executeQuery();

				if (rs.next()) {
					RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
					request.setAttribute("msg", "Email or Username is already used");
					rd.forward(request, response);

				} else {

					PreparedStatement ps = con.prepareStatement(query);

					ps.setString(1, email);
					ps.setString(2, username);
					ps.setString(3, password);

					ps.execute();
				}

				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				request.setAttribute("msg", "Account is created successfully");
				rd.forward(request, response);

			} catch (Exception e) {
				RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
				request.setAttribute("msg", "Email or Username is already used");
				rd.forward(request, response);
				System.out.print(e);
			}
			out.close();

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
			request.setAttribute("msg", "Email,Username and Password are requiered");
			rd.forward(request, response);

		}
	}

}