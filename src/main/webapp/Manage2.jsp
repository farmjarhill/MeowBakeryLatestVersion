<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="enity.model"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon"
	href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
	type="image/x-icon">
<script src="https://kit.fontawesome.com/3428f86280.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="cart.css" />
<title>Quản lý sản phẩm</title>
</head>
<style>
.cart-items {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 40px;
}

table {
	border-collapse: collapse;
	width: 100%;
	table-layout: fixed;
}

td {
	border: 1px solid gray;
	text-align: center;
	font-size: 20px;
}

th {
	font-size: 20px;
}

td img.imgcake {
	width: 110px;
	height: 110px;
}

h5.card-title {
	font-size: 20px;
	font-weight: bold;
}

button.remove, button.fix {
	background-color: #ffa500;
	border: none;
	color: white;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 50px;
}

button:hover {
	background-color: pink;
	transition: 0.5s;
}

.hero {
	text-align: center;
}

.cloud {
	display: flex;
	width: 100%;
}

.button {
	border-radius: 0.25rem;
}

#nav-account-section h1 {
	font-weight: 600;
	color: #c84561;
}

.form {
	text-transform: uppercase;
	font-size: 1rem;
	border: none;
	border-radius: 0.25rem;
	margin-left: 1rem;
	cursor: pointer;
}

/* ----------------Add Product---------------------- */
/* Thiết kế cho nút "Thêm sản phẩm" */
.addBtnContainer {
	text-align: center; /* căn giữa nút */
	margin-bottom: 20px; /* khoảng cách với phần tử kế tiếp */
}

.hidden {
	display: none;
}

#addBtn {
	padding: 18px 36px; /* kích cỡ của nút */
	font-size: 18px; /* kích cỡ font chữ */
	font-weight: bold; /* độ béo của font chữ */
	color: #fff; /* màu chữ */
	border: none; /* không có viền */
	background-color: #4CAF50; /* màu nền */
	border-radius: 10px; /* bo tròn góc */
	cursor: pointer; /* dấu hiệu con trỏ khi rê chuột vào nút */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4); /* đổ bóng cho nút */
}

#addBtn:hover {
	background-color: #3e8e41; /* thay đổi màu nền khi rê chuột vào */
}

/* Thiết kế cho form sản phẩm */
#productForm {
	background-color: #f1f1f1; /* màu nền của form */
	padding: 20px; /* độ rộng khoảng cách bên trong của form */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4); /* đổ bóng cho form */
	border-radius: 10px; /* bo tròn góc */
	width: 500px; /* độ rộng tối đa của form */
	margin: 0 auto; /* căn giữa form theo chiều ngang */
}

#productForm label {
	display: block; /* hiển thị từng label trên một dòng */
	font-weight: bold; /* độ béo của font chữ */
	margin-top: 20px; /* khoảng cách từng label */
}

#productForm input[type="text"], #productForm input[type="file"] {
	width: 100%; /* độ rộng của input */
	padding: 6px 10px; /* độ rộng và chiều cao của phần input */
	margin-bottom: 20px; /* khoảng cách với phần tử kế tiếp */
	box-sizing: border-box;
	/* kích thước total bao gồm padding và border */
	border-radius: 10px; /* bo tròn góc */
	border: none; /* không có viền */
}

#productForm button[type="submit"] {
	padding: 12px 24px; /* kích cỡ của nút */
	font-size: 18px; /* kích cỡ font chữ */
	font-weight: bold; /* độ béo của font chữ */
	color: #fff; /* màu chữ */
	border: none; /* không có viền */
	background-color: #4CAF50; /* màu nền */
	border-radius: 10px; /* bo tròn góc */
	cursor: pointer; /* dấu hiệu con trỏ khi rê chuột vào nút */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4); /* đổ bóng cho nút */
}

#productForm button[type="submit"]:hover {
	background-color: pink; /* thay đổi màu nền khi rê chuột vào */
}
/* -------------------Edit Product------------------------- */
h1 {
	text-align: center;
}

.form-edit {
	padding: 20px 40px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	background-color: #FFF;
	margin: 50px auto;
	max-width: 500px;
	border-radius: 10px;
}

input[type=submit] {
	margin: 20px 0 0 0;
	width: 100px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	text-align: center;
}

label {
	margin-top: 10px;
	display: block;
}

input[type=text], input[type=file] {
	margin-top: 5px;
	padding: 10px;
	width: 100%;
	border: none;
	border-radius: 5px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	font-size: 16px;
}

input[type=file] {
	padding: 5px;
}

input[type=text]:focus {
	outline: none;
	border: 1px solid #4CAF50;
}
/* -------------------------------------- */
</style>
<body>
	<div id="progress">
		<span id="progress-value">&#x1F815;</span>
	</div>
	<div id="zalo-home">
		<span id="zalo-value"><a href="https://zalo.me/g/qoespx925"
			target="_blank"><img alt="icon zalo" src="./img/icon-zalo.png"></a></span>
	</div>
	<header class="hero">
		<nav class="cloud">
			<div id="nav-logo-section" class="nav-section"
				style="color: #c84561; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">
				<img
					src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
					alt="MeoBakery"
					style="width: 9.375rem; height: 9.375rem; border-radius: 5.625rem 5.625rem 5.625rem 5.625rem;">
			</div>
			<div id="nav-links-section" class="nav-section">
				<a href="Svlet#" class="button">Home</a>
			</div>


			<div id="nav-account-section" class="nav-section">
				<h1 style="font-size: 17px; width: 100%;">Hello
					${sessionScope.acc.username}</h1>

				<form action="Logout" method="post">
					<button class="form" type="submit" style="font-size: 20px;">Logout</button>
				</form>
			</div>
		</nav>
		<p
			style="font-weight: 600; text-align: center; font-size: 80px; margin: -48px auto; color: #b32040;">Xin
			chào Admin!</p>
	</header>

	<div class="addBtnContainer">
		<button id="addBtn">
			+ Thêm sản phẩm <i class="fa-sharp fa-solid fa-caret-down"></i>
		</button>
		<form id="productForm" class="hidden" action="add" method="post">
			<h3>Thêm sản phẩm</h3>
			<label for="productName">Tên sản phẩm</label> <input
				name="productName" type="text" id="productName"
				style="text-align: center;"> 
				<label for="productType">Category</label>
				<select name = "productType" class="form-group">
			<c:forEach items ="${listca}" var ="o">
				<option value ="${o.cid}">${o.cname}</option>
				</c:forEach>
				</select>
			<label for="productPrice">Giá sản phẩm</label> <input
				name="productPrice" type="text" id="productPrice"
				style="text-align: center;"> <label for="productImage">Hình
				ảnh sản phẩm</label> <input name="productImage" type="text"
				id="productImage" style="text-align: center;">
			<button type="submit" style="background-color: brown;">Lưu
				sản phẩm</button>
		</form>
	</div>
	<section2 id="gradient">
	<div id="wrapper" style="padding-top: 70px; margin-top: 28px;">
		<div class="headline">
			<h3 style="font-size: 40px; text-align: center; color: darkpink;">All
				Products</h3>
		</div>
		<ul class="products"
			style="padding-top: 30px; max-width: 73.125rem; padding-bottom: 60px;">
			<table>

				<th>Product</th>
				<th>Price</th>
				<th>Feature</th>

			</table>
			<c:forEach items="${listp}" var="o">
				<div class="cart-items">

					<table>

						<tr>

							<td>
								<div class="cart-info-list" style="display: flex;">
									<img class="imgcake card-img-top" src="${o.image}">
									<div>
										<br>
										<h5 class="card-title" style="font-size: 20px;">${o.name}</h5>
										<br>


									</div>
								</div>
							</td>
							<td><h5 style="font-weight: bold; font-size: 20px;">
									₫${o.price}</h5></td>
							<td style="text-align: center;"><a href="delete?pid=${o.id}"><button
										class="remove">REMOVE</button></a><br> <br> <a
								href="LoadP?pid=${o.id}"><button class="fix">SỬA</button></a></td>
						</tr>
					</table>

				</div>
			</c:forEach>
		</ul>
	</div>
	</section2>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>Giới thiệu</h4>
					<p style="color: #1673A1;">Xuất thân trong gia đình có nghề làm
						bánh mỳ truyền thống, Chef Thu Uyên cũng có thời gian dài làm việc
						tại cửa hàng bán Bodega . Cô có hơn 5 năm kinh nghiệm làm Chef
						bánh tại khách sạn danh tiếng Sofitel Metropole Legende Hanoi.</p>
				</div>
				<div class="footer-col">
					<h4>Liên kết</h4>
					<ul class="links-footer">
						<li class="list"><a href="#" class="button">Giới thiệu</a></li>
						<li class="list"><a href="#" class="button">Chính sách
								bảo mật</a></li>
						<li class="list"><a href="#" class="button">Điều khoản sử
								dụng</a></li>
						<li class="list"><a href="#" class="button">Sản phẩm</a></li>
						<li class="list"><a href="#" class="button">Về chúng tôi</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>Thông tin liên hệ</h4>
					<ul class="social-links">
						<li class="list"><a href="#" class="button"><i><svg
										class="fas" xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
										class="w-6 h-6">
              <path stroke-linecap="round" stroke-linejoin="round"
											d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
              <path stroke-linecap="round" stroke-linejoin="round"
											d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
            </svg> </i>Số 15, hẻm 76 ngách 51, ngõ Linh Quang, phường Văn Chương,
								quận Đống Đa, Hà Nội.</a></li>
						<li class="list"><a href="tel:0359439056" class="button"><i><svg
										class="fas" xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
										class="w-6 h-6">
              <path stroke-linecap="round" stroke-linejoin="round"
											d="M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 002.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 01-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 00-1.091-.852H4.5A2.25 2.25 0 002.25 4.5v2.25z" />
            </svg> </i>0359439056</a></li>
						<li class="list"><a href="mailto:Meobakery@gmail.com"
							class="button"><i><svg class="fas"
										xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
										class="w-6 h-6">
              <path stroke-linecap="round" stroke-linejoin="round"
											d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
            </svg> </i>Meobakery@gmail.com</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script src="main.js"></script>
	<script src="JS/main2.js"></script>
	<script src="JS/main3.js"></script>
	<script src="JS/searchbox.js"></script>
	<script>
		var popup = document.getElementById('popup');

		function openPopup() {
			popup.classList.add('open-popup');
		}

		function closePopup() {
			popup.classList.remove('open-popup');
			// Chuyển hướng đến đường dẫn href bằng JavaScript
			window.location.href = '[YOUR_HREF_URL]';
		}
	</script>
	<script>
		var addBtn = document.getElementById('addBtn');
		var productForm = document.getElementById('productForm');

		// Xử lý sự kiện click vào button
		addBtn.addEventListener('click', function() {
			// Nếu form đang ẩn đi (có class 'hidden')
			if (productForm.classList.contains('hidden')) {
				// Hiện form lên bằng cách xóa class 'hidden'
				productForm.classList.remove('hidden');
			} else {
				// Ngược lại, ẩn form đi bằng cách thêm class 'hidden'
				productForm.classList.add('hidden');
			}
		});
	</script>
</body>
</html>