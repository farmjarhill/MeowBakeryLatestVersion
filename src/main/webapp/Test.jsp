<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="enity.model"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="style.css" />
<link rel="icon"
	href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
	type="image/x-icon">
<script src="https://kit.fontawesome.com/3428f86280.js"
	crossorigin="anonymous"></script>
<title>Mèo Bakery</title>
</head>
<style>
.menu-level-1 {
	max-width: 1100px;
	margin: auto;
	display: flex;
	flex-direction: row;
}

.menu-level-top {
	max-width: 1100px;
	display: flex;
	flex-direction: row;
}

.item-level-1 i {
	color: #fff;
	font-size: 16px;
	line-height: 20px;
}

.item-level-1:hover .menu-level-2 {
	display: block;
}

.item-level-1:last-child {
	margin-left: auto;
}

.menu-level-2 {
	border: 1px solid #ddd;
	box-shadow: 1px 2px 2px #ddd;
	position: absolute;
	top: 52px;
	display: none;
	background-color: #fff;
}

.menu-level-2 a {
	color: #222;
}

.menu-level-2 .item-level-2 {
	padding: 10px 20px;
}

.menu-level-2 .item-level-2:hover {
	text-decoration: underline;
	background-color: lightgray;
}

a {
	text-decoration: none;
}
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
					style="width: 150px; height: 150px; border-radius: 90px 90px 90px 90px;">
			</div>
			<div id="nav-links-section" class="nav-section">

				<a href="Svlet#" class="button">Home</a>
				<ul class="menu-level-top">
					<li class="item-level-1"><a href="#gradient"
						class="button item-level-1-title"><i
							class="fa-sharp fa-solid fa-caret-down" style="color: black;"></i>
							Menu</a>
						<ul class="menu-level-2">
							<c:forEach items = "${listca}" var ="o">
							<li class="item-level-2"><a href="loadbyca?cid=${o.cid}"
								class="item-level-2-title" style="text-decoration: none;">${o.cname}</a></li>
							</c:forEach >
						</ul></li>
				</ul>

				<div class="container-us">
					<a href="#" class="button" onclick="openPopup()">About us</a>
					<div class="popup" id="popup">

						<section class="team">
							<div class="container-team">
								<h1>OUR TEAM</h1>
								<div class="row1">
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/vu_quynh_anh.jpg" alt="Leader Team"
												class="img-responsive">
											<ul>
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Vũ Quỳnh Anh</h2>
										<h3>Back End</h3>
									</div>
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/nguyen_vu_quang_minh.jpg" alt="Member 2"
												class="img-responsive">
											<ul style="padding-left: 50px;">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Nguyễn Vũ Quang Minh</h2>
										<h3>Front End</h3>
									</div>
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/pham_gia_hien.jpg" alt="Member 2"
												class="img-responsive">
											<ul>
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Phạm Gia Hiển</h2>
										<h3>Front End</h3>
									</div>
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/thu_uyen.jpg" alt="Member 3"
												class="img-responsive">
											<ul style="padding-left: 10px; margin-left: 20px;">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Trần Thị Thu Uyên</h2>
										<h3>Báo cáo</h3>
									</div>
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/about-us.png" alt="Member 4"
												class="img-responsive">
											<ul style="padding-left: 35px;">
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Đinh Lê Hoàng Minh</h2>
										<h3>Back End</h3>
									</div>
									<div class="col-md-3 profile-text-center">
										<div class="img-box">
											<img src="img/to_thi_quy.jpg" alt="Member 5"
												class="img-responsive">
											<ul>
												<a href="#"><li><i class="fa fa-facebook"></i></li></a>
												<a href="#"><li><i class="fa fa-twitter"></i></li></a>
												<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
											</ul>
										</div>
										<h2>Tô Thị Quý</h2>
										<h3>Báo cáo</h3>
									</div>
								</div>
							</div>
						</section>
						<button type="button" onclick="closePopup()">OK</button>
					</div>
				</div>

			</div>
			<div id="nav-searchbox-section" class="nav-section">
				<div class="search">
					<input type="text" class="searchTerm" placeholder="Search.."
						id="input" data-search />
					<button type="submit" class="searchButton">
						<i class="fa fa-search"></i>
					</button>
				</div>

				<ul class="list"></ul>
			</div>
			<c:if test="${sessionScope.acc.username != null }">
				<div id="nav-cart-section" class="cart-section">
					<a href="cart.jsp" style="text-decoration: none; color: white;"><svg class="cart"
						style="width: 1.875rem; height: 1.875rem; position: static; padding-top: .9375rem;"
						xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
						stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round"
							d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" />
          </svg></a>
				</div>
			</c:if>
			<div id="nav-account-section" class="nav-section">
				<c:if test="${sessionScope.acc.username != null }">
					<div id="nav-account-section" class="nav-section">
						<nav id="nav-bar">
							<ul class="menu-level-1">
								<li class="item-level-1"><a href="#"
									class="item-level-1-title" style="text-decoration: none;"><h1
											style="font-size: 15px;">Hello
											${sessionScope.acc.username}</h1></a>
									<ul class="menu-level-2">
										<c:if test="${sessionScope.acc.role == 1 }">
											<li class="item-level-2"><a href="Manage"
												class="item-level-2-title">Manage</a></li>
											<li class="item-level-2"><a href="OderManage"
												class="item-level-2-title">Manage Order</a></li>
											<li class="item-level-2"><a href="AllProductO"
												class="item-level-2-title">Product Order</a></li>
										</c:if>
										<form action="ExistOder" method="post">
											<button type="submit"
												style="background-color: transparent; border: none; width: 100%;">
												<li class="item-level-2"><a class="item-level-2-title"
													type="submit"> <h style="font-size: 17px;">Existing
														Order</h></a></li>
											</button>
										</form>

									</ul></li>
							</ul>
						</nav>
					</div>
					<form action="Logout" method="post">
						<button class="form" type="submit" style="font-size: 20px;">Logout</button>
					</form>
				</c:if>
				<c:if test="${sessionScope.acc.username == null }">
					<button class="form">
						<a id="form" href="./login.jsp"
							style="text-decoration: none; color: #1673A1; font-size: 1.2rem;">Login</a>
					</button>
					<button class="form">
						<a id="form" href="./form.jsp"
							style="text-decoration: none; color: #1673A1; font-size: 1.2rem;"">Register</a>
					</button>
				</c:if>
			</div>
		</nav>
	</header>
	<section class="nav2">
		<nav class="cloud2">
			<div id="vecto">
				<img style="margin: -6px;" src="./img/Vector.png" alt="vecto"
					class="nav2-section" />
			</div>

		</nav>
	</section>
	<section3>
	<div
		style="text-align: center; margin-top: 30px; background-image: linear-gradient(180deg, rgba(255, 221, 216, 0) 0.83%, rgba(255, 220, 215, 0.5) 27.92%, rgba(255, 161, 148, 0.5) 49.79%, rgba(255, 220, 215, 0.5) 73.23%, rgba(255, 220, 215, 0) 100%);">
		<iframe style="border: 5px solid pink; border-radius: 50px;"
			width="560" height="315"
			src="https://www.youtube.com/embed/nIjoVNkDnRA?&autoplay=0"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
	</div>
	</section3>
	<section2 id="gradient">
	<div id="wrapper" style="margin-top: 28px;">
		<div class="headline">
		<c:if test="${sessionScope.acc.role == null }">
			<h3 style="font-size: 40px;">Menu</h3>
		</c:if>
		<c:if test="${sessionScope.acc.role != null }">
			<h3 style="font-size: 40px;">Menu</h3>
		</c:if>
		</div>
		<ul class="products" style="padding-top: 30px; max-width: 73.125rem;">
			<c:forEach items="${listc}" var="o">
			<form action="Macaron_cart" method="post" >
				<li>
					<div class="product-item">

						<div class="product-top">

							<a href="" class="product-thumb"> <img src="${o.image}">
							</a>
							<!--  Mua ngay -->
							<input name="id" value="${o.id}" type="hidden">
                <input name="name" value="${o.name}" type="hidden">
                <input name="price" value="${o.price}" type="hidden">
                <input name="image" value="${o.image}" type="hidden">
                <input name="username" value="${sessionScope.acc.username} " type="hidden">
							<c:if test="${sessionScope.acc.role != null }">
								<button type="submit"><a class="buy-now" data-product-id="${o.id}">Add to cart</a></button>
							</c:if>
						</div>
						<div class="product-info">
							<a href="" class="product-cat"></a> <a href=""
								class="product-name">${o.name}</a> <a href=""
								class="product-price">${o.price}</a>
						</div>
					</div>
				</li>
			</form>
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
	<script src="JS/main2.js"></script>
	<script src="JS/main3.js"></script>
	<script src="JS/searchbox.js"></script>

</body>
</html>