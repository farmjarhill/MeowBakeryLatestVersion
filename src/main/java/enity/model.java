package enity;

public class model {
		private int id;
		private String name;
		private int category;
		private Double price;
		private String image;
		
		
		public model() {
		}

		
		public model(int id, String name, int category, Double price, String image) {
			this.id = id;
			this.name = name;
			this.category = category;
			this.price = price;
			this.image = image;
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

		public int getCategory() {
			return category;
		}

		public void setCategory(int category) {
			this.category = category;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public String getImage() {
			return image;
		}

		public void setImage(String image) {
			this.image = image;
		}

		@Override
		public String toString() {
			return "Product [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", image="
					+ image + "]";
		}
		
		
	}

