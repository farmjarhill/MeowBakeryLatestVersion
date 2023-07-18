<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="enity.item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="cart.css" />
    <link rel="icon" href="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/3428f86280.js" crossorigin="anonymous"></script>
    <title>Giỏ hàng của bạn - Mèo Bakery</title>
  </head>
  <style>
form {
    width: 60vw;
    max-width: 500px;
    min-width: 300px;
    margin: 0 auto;
    padding-bottom: 2em;
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
  border-radius: 50px;
}
:placeholder-shown{
  text-align: center;
}
.hero {
  text-align: center;
}

.cloud {
  display: flex;
  width: 100%;
}

.cloud > .nav-section {
  padding: 1rem 2rem;
  display: flex;
  gap: 2rem;
  justify-content: space-between;
}

#nav-logo-section,
#nav-links-section {
  flex-basis: calc(100% / 2);
}

#nav-links-section {
  flex-basis: calc(100% / 3);
}

.button {
  border-radius: 0.25rem;
}

#nav-account-section {
  display: flex;
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
  </style>
  <body>
    <div id="progress">
      <span id="progress-value">&#x1F815;</span>
    </div>
    <div id="zalo-home">
      <span id="zalo-value"><a href="https://zalo.me/g/qoespx925" target="_blank"><img alt="icon zalo" src="./img/icon-zalo.png"></a></span>
    </div>
    <header class="hero">
      <nav class="cloud">
        <div
          id="nav-logo-section"
          class="nav-section"
          style="
            color: #c84561;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial,
              sans-serif;
          "
        >
        <a href="Svlet#"><img src="./img/Pink Pastel Playful Fun Modern Food and Bakery Logo.png" alt="MeoBakery" style="width: 9.375rem; height: 9.375rem; border-radius: 5.625rem 5.625rem 5.625rem 5.625rem;"></a>
        </div>
        <div id="nav-links-section" class="nav-section">
          <a href="Svlet#" class="button">Home</a>        
        </div>
        
        <div id="nav-account-section" class="nav-section">
             <a href="#" style="text-decoration: none; width: 100%;"><h1 style="font-size: 20px; ">Hello ${sessionScope.acc.username}</h1 ></a>
              
         <form action="Logout" method="post"><button class="form" type="submit" style="font-size: 20px;">Logout</button></form>

        </div>
       
      </nav>
      <p style="font-weight: 600; text-align: center;font-size: 80px; margin: -48px auto; color: #b32040;">Giỏ hàng của bạn</p>
    </header>

<div class="producstOnCart hide">
  <div class="overlay"></div>
    <table>
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
     </tr>
      
       <c:forEach items ="${sessionScope.cart}" var="o">
<form action="Diachi" method="post"> 
       <tr>
       <td> ${o.id} </td>
       <td> ${o.name} <br><div></div><img src="${o.image}"></div></td>
       <td> ${o.price} </td>
       <td> ${o.quantity} </td>
       </tr>
       </c:forEach>
        </table> 
  <ul id="buyItems">  
  
      <c:if test = "${sessionScope.acc.username == null }">                                                          
       <h4 class="empty">Your shopping cart is empty</h4> 
      </c:if> 
  </ul>
  <input type="hidden" name="user" value="${sessionScope.acc.username}">
 
  <h3 class="btn1 checkout hidden">Total Price</h3>
  <div class="total-price">
    <table>
        <tr>
            <td style="font-size: 20px;">Total</td>
            <td class="cart-total-price"><h6 id="sum-prices" style="font-size: 30px;">
            <% 
            Double totalPrice = 0.0;
            if(session.getAttribute("cart") != null){ 
            List<item> cart = (List<item>) session.getAttribute("cart");
            
			for(int i =0; i < cart.size();i++) {
				totalPrice = totalPrice+ cart.get(i).getPrice();
			}
            }
     
            
            %>

            <%=totalPrice%>
            </h6></td>
        </tr>
    </table>
  </div><br>
  <h class="btn1 checkout hidden" style="font-size: 50px; color: brown">Your information</h>
 
  <h1 style="color:red;"><%=request.getAttribute("msg") != null ? request.getAttribute("msg") : "" %></h1>
    <label>Họ và tên:</label>
    <input style="text-align: center;width: 50%;" type="text" name="name" placeholder="Nhập họ và tên của bạn" required><br><br>
    <label>Số điện thoại:</label>
    <input style="text-align: center;width: 50%;" type="text" name="phone" placeholder="Nhập số điện thoại của bạn" required><br><br>
    <label>Địa chỉ giao hàng:</label>
    <input style="text-align: center;width: 50%;" type="text" name="address" placeholder="Nhập địa chỉ của bạn" required><br><br>
    
    <input name="id" value="${o.id}" type="hidden">
    <input name="name_${o.id}" value="${o.name}" type="hidden">
    <input name="price_${o.id}" value="${o.price}" type="hidden">
    <input name="quantity_${o.id}" value="${o.quantity}" type="hidden">
    <input name="image_${o.id}" value="${o.image}" type="hidden">
    
    
    
    
    
  <input style="width: 30%;" type="submit" value="Submit"/>
  <br>
  <br>
  <div>
  <button style="width: 30%;"><a href="index.jsp">Continue shopping</a> </button>
  </div>
</form>     

  
</div>

    <footer class="footer">
        <div class="container">
          <div class="row">
            <div class="footer-col">
              <h4>Giới thiệu</h4>
              <p style="color: #1673A1;">Xuất thân trong gia đình có nghề làm bánh mỳ truyền thống, Chef Thu Uyên cũng có thời gian dài làm việc tại cửa hàng bán Bodega . Cô có hơn 5 năm kinh nghiệm làm Chef bánh tại khách sạn danh tiếng Sofitel Metropole Legende Hanoi.
              </p>
            </div>
            <div class="footer-col">
              <h4>Liên kết</h4>
              <ul class="links-footer">
                <li class="list"><a href="#" class="button">Giới thiệu</a></li>
                <li class="list"><a href="#" class="button">Chính sách bảo mật</a></li>
                <li class="list"><a href="#" class="button">Điều khoản sử dụng</a></li>
                <li class="list"><a href="#" class="button">Sản phẩm</a></li>
                <li class="list"><a href="#" class="button">Về chúng tôi</a></li>
              </ul>
            </div>
            <div class="footer-col">
              <h4>Thông tin liên hệ</h4>
              <ul class="social-links">
                <li class="list"><a href="#" class="button"><i><svg class="fas" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                  <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
                </svg>
                </i>Số 15, hẻm 76 ngách 51, ngõ Linh Quang, phường Văn Chương, quận Đống Đa, Hà Nội.</a></li>
                <li class="list"><a href="tel:0359439056" class="button"><i><svg class="fas" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 002.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 01-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 00-1.091-.852H4.5A2.25 2.25 0 002.25 4.5v2.25z" />
                </svg>
                </i>0359439056</a></li>
                <li class="list"><a href="mailto:Meobakery@gmail.com" class="button"><i><svg class="fas" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
                </svg>
                </i>Meobakery@gmail.com</a></li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
      <script src="JS/main2.js"></script>
      
      
      
     
      
    </body>
</html>
    
    