package login;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	public Account login (String username,String password) {
		String query1="Select * from user where username=? and password=? or email=? and password=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps1=con.prepareStatement(query1);
			 
			ps1.setString(1, username);
			ps1.setString(2, password);
			ps1.setString(3, username);
			ps1.setString(4, password);
			
			
			ResultSet rs1=ps1.executeQuery();
			
			while (rs1.next()) {return new Account(rs1.getString(1),
					rs1.getString(2),
					rs1.getString(3),
					rs1.getInt(4));
												  
												  
					
			 }
		}
		catch(Exception e){
			
		}
		return null;
	}
}
