package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import enity.Oder;
import enity.model;
import enity.Cart;
import enity.Category;
import enity.item;
public class DAO {
	public List<model> getProducts() {
		List<model> list = new ArrayList<>();
		String query = "select * from products";
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();

            while (rs.next()) {
            	list.add(new model(rs.getInt(1),
            			rs.getString(2),
            			rs.getInt(3),
            			rs.getDouble(4),
            			rs.getString(5)));
                
            }

        } catch (Exception e) {
            System.out.print(e);
        }
        return list;}
	
	
	public model getProductByID(String pid) {
		String query = "select * from products\n"
				+ "where id = ?";
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, pid);
			ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new model(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5));

            }
        } catch (Exception e) {System.out.print(e);
        }
        return null;
    }

	public List<Oder> getAlloder() {
		List<Oder> list = new ArrayList<>();
		String query = "select * from orders";
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();

            while (rs.next()) {
            	list.add(new Oder(rs.getInt(1),
            			rs.getString(2),
            			rs.getString(3),
            			rs.getString(4),
            			rs.getString(5),
            			rs.getInt(6),
            			rs.getString(7),
            			rs.getString(8)));
                
            }

        } catch (Exception e) {
            System.out.print(e);
        }
        return list;}
	
	
	public List<Oder> getoderbyusername(String username) {
		List<Oder> list = new ArrayList<>();
		String query = "select * from orders\n" + "where customer =?";
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,username);
			ResultSet rs=ps.executeQuery();

            while (rs.next()) {
            	list.add(new Oder(rs.getInt(1),
            			rs.getString(2),
            			rs.getString(3),
            			rs.getString(4),
            			rs.getString(5),
            			rs.getInt(6),
            			rs.getString(7),
            			rs.getString(8)));
                
            }

        } catch (Exception e) {
            System.out.print(e);
        }
        return list;}
	public void deleteProduct(String pid) {
    	String query = "delete from products\n"
    					+ "where id = ?";
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
    }
	public void insertProduct(String productName, String productType,
			String productPrice, String productImage) {
		String query = "INSERT INTO `custormer`.`products` (`name`, `category`, `price`, `image`) VALUES (?,?,?,?)";
		try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, productName);
			ps.setString(2, productType);
			ps.setString(3, productPrice);
			ps.setString(4, productImage);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
	}
	public void editProduct(String productName,String productcategory,String productPrice,String productImage, String productID) {
		String query = "UPDATE `custormer`.`products`\n "
				+ "SET `name` = ?\n,"
				+ " `category` = ?\n,"
				+ " `price` = ?\n,"
				+ " `image` = ?\n"
				+ " WHERE (`id` = ?);";
		try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, productName);
			ps.setString(2, productcategory);
			ps.setString(3, productPrice);
			ps.setString(4, productImage);
			ps.setString(5, productID);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}
	}
	  public List<Category> getAllCategory() {
	        List<Category> list = new ArrayList<>();
	        String query = "select * from category";
	        try {
	        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();

	            while (rs.next()) {
	                list.add(new Category(rs.getInt(1),
	                        rs.getString(2)));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }
	  public List<model> getProductBycategory(String cid) {
		  List<model> list = new ArrayList<>();
			String query = "select * from products\n"
					+ "where category = ?";
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, cid);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
	            	list.add(new model(rs.getInt(1),
	            			rs.getString(2),
	            			rs.getInt(3),
	            			rs.getDouble(4),
	            			rs.getString(5)));

	            }
	        } catch (Exception e) {System.out.print(e);
	        }
	        return list;
	    }
	  public Oder getOrderByID(String oid) {
			String query = "select * from orders\n"
					+ "where id_order = ?";
	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, oid);
				ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	                return new Oder(rs.getInt(1),
	            			rs.getString(2),
	            			rs.getString(3),
	            			rs.getString(4),
	            			rs.getString(5),
	            			rs.getInt(6),
	            			rs.getString(7),
	            			rs.getString(8));

	            }
	        } catch (Exception e) {System.out.print(e);
	        }
	        return null;
	    }
	  public void editOrder(String status, String id) {
			String query = "UPDATE `custormer`.`orders` "
					+ "SET `status` = ?\n"
					+ "WHERE id_order = ?";
			try {
	    		Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, status);
				ps.setString(2, id);
				ps.executeUpdate();
			} catch (Exception e) {
				System.out.print(e);
			}
		}
	  public List<Cart> getProductsOrder() {
			List<Cart> list = new ArrayList<>();
			String query = "select * from cart";
	        try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custormer", "root", "Vqa0362244188:>>");
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();

	            while (rs.next()) {
	            	list.add(new Cart(rs.getString(1),
	            			rs.getInt(2),
	            			rs.getString(3),
	            			rs.getDouble(4),
	            			rs.getInt(5)));
	                
	            }

	        } catch (Exception e) {
	            System.out.print(e);
	        }
	        return list;}
		
		
}
