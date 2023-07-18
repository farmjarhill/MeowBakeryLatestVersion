package enity;

public class Oder {
	private int id_order ;
	private String customer;
	private String name;
	private String phone_number;
	private String address;
	private int amount;
	private String oder_date;
	private String status;
	
	public Oder() {
	}

	
	public Oder(int id_order, String customer, String name, String phone_number,String address,int amount,String oder_date, String status ) {
		this.id_order = id_order;
		this.customer = customer;
		this.name = name;
		this.phone_number = phone_number;
		this.address = address;
		this.amount = amount;
		this.oder_date = oder_date;
		this.status = status;
	}


	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
	}

	public String getcustomer() {
		return customer;
	}

	public void setcustomer(String customer) {
		this.customer = customer;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getphone_number() {
		return phone_number;
	}

	public void setphone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}
	public int getamount() {
		return amount;
	}

	public void setamount(int amount) {
		this.amount = amount;
	}

	public String getstatus() {
		return status;
	}
	public void setstatus(String status) {
		this.status = status;}
	
	
	public String getoder_date() {
		return oder_date;
	}
	public void setoder_date(String oder_date) {
		this.oder_date = oder_date;}
	@Override
	public String toString() {
		return "Oder [id_order=" + id_order + ", customer=" + customer + ", name=" + name + ", phone_number=" + phone_number + ", address="
				+ address +",amount " + amount+ ", oder_date" +oder_date+",status" + status + "]";
	}
	
	
}

