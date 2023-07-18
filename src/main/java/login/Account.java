package login;

public class Account {
		private String email;
		private String username;
		private String password;
		private int role;
		
		public Account () {}
		
		public Account (String email, String username, String password,int role) {
			this.email = email;
			this.username = username;
			this.password = password;
			this.role = role;
		}
		public String getEmail () {return email;}
		public void setEmail(String email) {this.email = email;}
		
		public String getUsername () {return username;}
		public void setUsername(String username) {this.password = username;}
		
		public String getPassword () {return password;}
		public void setPassword(String password) {this.password = password;}
		
		 public int getRole() {
		        return role;
		    }

		    public void setRole(int role) {
		        this.role = role;}
	}


