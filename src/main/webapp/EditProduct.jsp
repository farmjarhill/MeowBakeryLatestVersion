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

.edit-product {
	padding: 50px 0;
	background-color: #f5f5f5;
}

.container-edit {
	width: 60%;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
}

.form-edit label {
	font-weight: bold;
	margin-bottom: 5px;
	color: #111;
}

.form-edit input[type="text"] {
	display: block;
	width: 95%;
	padding: 10px 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 1em;
	margin-bottom: 10px;
}

.form-edit input[type="submit"] {
	background-color: #6fd649;
	color: #fff;
	border: none;
	border-radius: 3px;
	font-size: 1em;
	padding: 10px 20px;
	cursor: pointer;
	margin-top: 20px;
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
	<section class="edit-product">
		<div class="container-edit">
			<h1 style="text-align: center;">Sửa sản phẩm</h1>
			<form class="form-edit" action="edit" method="POST">
				<div class="modal-body">
					<div class="form-group">
						<label for="id">ID sản phẩm</label> <input value="${detail.id}"
							type="text" id="id" name="id" readonly required>
					</div>
					<div class="form-group">
						<label for="name">Tên sản phẩm</label> <input
							value="${detail.name}" type="text" id="name" name="name" required>
					</div>
					<div class="form-group">
						<label for="category">Loại sản phẩm</label> <input
							value="${detail.category}" type="text" id="category"
							name="category" required>
					</div>
					<div class="form-group">
						<label for="price">Giá sản phẩm</label> <input type="text"
							value="${detail.price}" id="price" name="price" required>
					</div>
					<div class="form-group">
						<label for="image">Hình ảnh sản phẩm</label> <input
							value="${detail.image}" type="text" id="image" name="image"
							required>
					</div>
					<center>
						<input type="submit" value="Submit">
					</center>
				</div>
			</form>
		</div>
	</section>

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
</body>
</html>