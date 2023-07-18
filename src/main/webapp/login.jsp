<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="login.css">
<link rel="icon"
	href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
	type="image/x-icon">
<title>Log in MeowBakery</title>
<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</head>
<body>
<%
String username="",password="",remember="";
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("cuser")){
			username=cookie.getValue();
		}
		if(cookie.getName().equals("cpass")){
			password=cookie.getValue();
		}
		if(cookie.getName().equals("crem")){
			remember=cookie.getValue();
		}
	}
}
%>



	<header>
		<div>
			<nav class="cloud">
				<div id="nav-logo-section" class="nav-section">
					<a href="Svlet#"><img
						src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png"
						alt="MeoBakery"
						style="width: 100px; height: 100px; border-radius: 90px 90px 90px 90px;"></a>
				</div>
			</nav>
		</div>
	</header>
	<section>
		<div class="form-box">
			<div class="form-value">
				<form action="Login" method="post">
					<h2>Login</h2>
					<br>
			        <h3 style="text-align: center;color:red;"><%=request.getAttribute("msg") != null ? request.getAttribute("msg") : "" %></h3>
					<div class="inputbox">
						<ion-icon name="mail-outline"></ion-icon>
						<input type="text" name="username" value="<%=username %>" required> <label for="">Email
							or Username</label>
					</div>
					<div class="inputbox">
						<ion-icon name="lock-closed-outline"></ion-icon>
						<input type="password" name="password" value="<%=password %>" required> <label for="">Password</label>
					</div>
					<div class="forget">
						<label for=""><input type="checkbox" name="remember" value="1 <%="1".equals(remember)? "checked=checked":"" %>">Remember Me</label>
					</div>
					<a href="indexlogin.jsp"><button type="submit">Log in</button></a>
					<div class="register">
						<p>
							Don't have a account? <a href="./form.jsp" target="_blank">Register</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<p style="text-align: end;">@meowbakery</p>
</body>
</html>