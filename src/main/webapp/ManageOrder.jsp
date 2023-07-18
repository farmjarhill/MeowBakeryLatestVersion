<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="enity.Oder"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" title="Coding design">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Manage Order</title>
<link rel="icon"
	href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
	type="image/x-icon">
<link rel="stylesheet" href="manageorder.css">
<script src="https://kit.fontawesome.com/3428f86280.js"
	crossorigin="anonymous"></script>
</head>
<style>
.nav>.cloud {
	
}

.nav-section {
	item-align: left;
}

a {
	text-decoration: none;
}

li {
	list-style-type: none;
}

.home:hover {
	color: pink;
}

.delete-btn {
	border: none; /* Loại bỏ đường viền */
	padding: 10px 13px; /* Kích thước và khoảng cách đệm */
	text-align: center; /* Căn giữa nội dung trong nút */
	text-decoration: none; /* Loại bỏ đường gạch chân bên dưới */
	display: inline-block;
	font-size: 10px; /* Kích thước chữ */
	cursor: pointer; /* Hình con trỏ khi rê chuột */
	border-radius: 5px; /* Bo tròn mép nút */
}

.delete-btn:hover {
	background-color: #d62828; /* Màu đỏ khi rê chuột vào */
}


</style>
<body>
	<div class="nav">
		<nav class="cloud">
			<div style="margin-top: 20px;" id="nav-logo-section"
				class="nav-section">
				<img
					src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
					alt="MeoBakery"
					style="width: 100px; height: 100px; border-radius: 90px 90px 90px 90px;">
			</div>
			<div style="margin-top: 30px; margin-right: 40px;">
				<li><a class="home" href="Svlet#"
					style="font-size: 20px; color: pink;">Back to home</a></li>
			</div>
		</nav>
	</div>
	<main class="table">
		<section class="table__header">
			<h1>Customer's Orders</h1>
			<div class="input-group">
				<input type="search" placeholder="Search Data..."> <img
					src="img/search.png" alt="">
			</div>

		</section>
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>Id <span class="icon-arrow">&UpArrow;</span></th>
						<th>Customer <span class="icon-arrow">&UpArrow;</span></th>
						<th>Phone number <span class="icon-arrow">&UpArrow;</span></th>
						<th>Order Date <span class="icon-arrow">&UpArrow;</span></th>
						<th>Status <span class="icon-arrow">&UpArrow;</span></th>
						<th>Amount <span class="icon-arrow">&UpArrow;</span></th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listoder}" var="o">
						<tr>

							<td>${o.id_order}</td>
							<td>${o.name}</td>
							<td>${o.phone_number}</td>
							<td>${o.oder_date}</td>
							<td>
								<p class="status delivered">${o.status}</p>
							</td>
							<td><strong> ₫${o.amount} </strong></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</main>
</body>
<script src="JS/scriptorder.js"></script>
</html>