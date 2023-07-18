<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="enity.model"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Order</title>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap"
	rel="stylesheet">
<link rel="icon"
	href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
	type="image/x-icon">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Open Sans', sans-serif;
	background: #f7b6c1;
	color: #252525;
}

header {
	background: linear-gradient(to bottom right, #b24592, #f15f79);
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	transition: all 0.5s ease-in-out;
	z-index: 999;
	padding: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

header nav ul {
	list-style: none;
	display: flex;
	align-items: center;
}

header nav ul li {
	margin-right: 20px;
}

header nav ul li:last-child {
	margin-right: 0;
}

header nav ul li a {
	font-size: 1.2rem;
	text-transform: uppercase;
	text-decoration: none;
	font-weight: 600;
	color: #fff;
	padding: 10px;
	border-radius: 5px;
	transition: all 0.3s ease-in-out;
}

header nav ul li a:hover {
	background: #fff;
	color: #b24592;
	transform: scale(1.1);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 197px;
	background: #fff;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	overflow: hidden;
}

table th, table td {
	padding: 15px;
	text-align: center;
	border: 1px solid #eee;
	font-size: 0.9rem;
	text-transform: uppercase;
}

table thead {
	background: #b24592;
	color: #fff;
}

table tbody tr:nth-of-type(odd) {
	background: rgba(0, 0, 0, 0.05);
}

button.edit {
	background: #b24592;
	color: #fff;
	border: none;
	padding: 10px 15px;
	border-radius: 5px;
	font-weight: 600;
	cursor: pointer;
	transition: all 0.3s ease-in-out;
}

button.edit:hover {
	background: #fff;
	color: #b24592;
}

td select {
	padding: 5px;
	font-size: 14px;
	border: solid 1px #CCC;
	border-radius: 4px;
	background-color: #FFF;
}
</style>
</head>

<body>

	<header>
		<a href="Svlet#"> <img
			src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
			alt="Logo"
			style="width: 9.375rem; height: 9.375rem; border-radius: 5.625rem 5.625rem 5.625rem 5.625rem;">
		</a>

		<nav>
			<ul>
				<li><a href="Svlet#">Home</a></li>

			</ul>
		</nav>

		<form action="Logout" method="post">
			<button class="edit" type="submit" style="font-size: 20px;">Logout</button>
		</form>
	</header>
	<section>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Phone Number</th>
					<th>Order Date</th>
					<th>Status</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listO}" var="o">
					<tr>

						<td>${o.name}</td>
						<td>${o.phone_number}</td>
						<td>${o.oder_date}</td>
						
						<td>${o.status}</td>
						
						
						<td>"${o.amount}"</td>
						<c:if test = "${o.status == 'In the way' }">
						<td><a href="LoadO?oid=${o.id_order}"><button class="edit">Edit</button></a></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
</body>
</html>