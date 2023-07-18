<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png" type="image/x-icon">
    <title>Register MeowBakery</title>
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@1,200&family=Quicksand:wght@500&display=swap');
body {
  width: 100%;
  height: 100vh;
  margin: 0;
  background-image: url("https://img.freepik.com/premium-photo/wooden-counter-top-with-bakery-shop-blurred-background_493806-11563.jpg");
  background-size: cover;  
  color: #f5f6f7;
  font-family: 'Quicksand';
    font-size: 16px;
}
nav{
  padding-top: 19px;
  padding-left: 34px;
}
h1, p {
  margin: 1em auto;
  text-align: center;
}

form {
  width: 60vw;
    max-width: 500px;
    min-width: 300px;
    margin: 0 auto;
  padding-bottom: 2em;
}

fieldset {
  border: none;
    padding: 2rem 0;
}

label {
  display: block;
    margin: 0.5rem 0;
}

input,
textarea,
select {
  margin: 10px 0 0 0;
    width: 100%;
  min-height: 2em;
}

input, textarea {
  background-color: #0a0a23;
  border: 1px solid #0a0a23;
  color: #ffffff;
  border-radius: 50px;
}

.inline {
  width: unset;
  margin: 0 0.5em 0 0;
  vertical-align: middle;
}

input[type="submit"] {
  display: block;
  width: 60%;
  margin: 1em auto;
  height: 2em;
  font-size: 1.1rem;
  background-color: pink;
  border-color: white;
  min-width: 300px;
  border-radius: 50px;
  color: #1673a1;
}

input[type="file"] {
  padding: 1px 2px;
}

a {
  color: #dfdfe2;
}

</style>
<body>
  
  <div>
    <nav class="cloud">
      <div
        id="nav-logo-section"
        class="nav-section">
        <a href="Svlet#"><img src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png" alt="MeoBakery" style="width: 100px; height: 100px; border-radius: 90px 90px 90px 90px;"></a>
      </div>
    </nav>
  </div>
  <head>
    <title>Registration Form</title>
      <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <h1>Registration Form</h1>
    <p>Please fill out this form with the required information</p>
     <h3 style="text-align: center;color:red;"><%=request.getAttribute("msg") != null ? request.getAttribute("msg") : "" %></h3>
    <form action="Registration" method="post">
      <fieldset>
        <label>Enter Your Username: <input type="text" name="username" required /></label>
        <label>Enter Your Email: <input type="email" name="email" required /></label>
        <label>Create a New Password: <input type="password" name="password" required /></label>
        <input type="hidden" value="User" name="role">
      </fieldset>
      <input type="submit" value="Submit" />
    </form>
    <p style="text-align: end; color: pink">@meowbackery</p>
  </body>
</html>
