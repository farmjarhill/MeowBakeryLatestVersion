package enity;

public class Cart {
			private String buyer;
			private int id;
			private String name;
			private Double price;
			private int quantity;
			
			
			public Cart() {
			}

			
			public Cart(String buyer, int id, String name, Double price, int quantity) {
				this.buyer = buyer;
				this.id = id;
				this.name = name;
				this.price = price;
				this.quantity= quantity;
			}


			public int getId() {
				return id;
			}

			public void setId(int id) {
				this.id = id;
			}

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public Double getPrice() {
				return price;
			}

			public void setPrice(Double price) {
				this.price = price;
			}
			
			public int getQuantity() {
				return quantity;
			}

			public void setQuantity(int quantity) {
				this.quantity = quantity;
			}

			public String getbuyer() {
				return buyer;
			}

			public void setbuyer(String buyer) {
				this.buyer = buyer;
			}

			@Override
			public String toString() {
				return "Product [id=" + id + ", name=" + name  + ", price=" + price + ", buyer="
						+ buyer + "]";
			}
			
			
		}



