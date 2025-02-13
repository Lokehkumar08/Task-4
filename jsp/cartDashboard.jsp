<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Cart Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #fcfcfc;
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 80%;
        margin: 0 auto;
      }
      h2 {
        color: #e74c3c;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }
      table, th, td {
        border: 1px solid #ddd;
      }
      th, td {
        padding: 10px;
        text-align: center;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin: 5px;
        cursor: pointer;
      }
      .btn:hover {
        background-color: #d35400;
      }
      form {
        display: inline;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Your Cart</h2>
      <table>
        <tr>
          <th>Item Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Action</th>
        </tr>
        <c:forEach var="item" items="${cartItems}">
          <tr>
            <td>${item.itemName}</td>
            <td>$${item.itemPrice}</td>
            <td>
              ${item.quantity}
              <form action="${pageContext.request.contextPath}/user/increaseQuantity" method="post" style="display:inline;">
                <input type="hidden" name="cartId" value="${item.cartId}" />
                <input class="btn" type="submit" value="+" />
              </form>
              <form action="${pageContext.request.contextPath}/user/decreaseQuantity" method="post" style="display:inline;">
                <input type="hidden" name="cartId" value="${item.cartId}" />
                <input class="btn" type="submit" value="-" />
              </form>
            </td>
            <td>
              <form action="${pageContext.request.contextPath}/user/removeFromCart" method="post" style="display:inline;">
                <input type="hidden" name="cartId" value="${item.cartId}" />
                <input class="btn" type="submit" value="Remove" />
              </form>
            </td>
          </tr>
        </c:forEach>
      </table>
      <h3>Total: $${totalPrice}</h3>
      <a class="btn" href="${pageContext.request.contextPath}/user/payment">Proceed to Payment</a>
      <a class="btn" href="${pageContext.request.contextPath}/user/home">Back to Home</a>
    </div>
  </body>
</html>



