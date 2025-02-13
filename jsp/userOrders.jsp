<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>User Orders - Korporate Kitchen</title>
    <style>
      body {
        background: #fcfcfc;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 90%;
        margin: 0 auto;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
      }
      th, td {
        padding: 10px;
        border: 1px solid #ddd;
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
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Your Orders</h2>
      <table>
        <tr>
          <th>Order ID</th>
          <th>Items</th>
          <th>Quantity</th>
          <th>Total Price</th>
          <th>Order Date</th>
          <th>Status</th>
          <th>Action</th>
        </tr>
        <c:forEach var="order" items="${orders}">
          <tr>
            <td>${order.orderId}</td>
            <td>${order.items}</td>
            <td>${order.quantity}</td>
            <td>$${order.totalPrice}</td>
            <td>${order.orderDate}</td>
            <td>${order.order_status}</td>
            <td>
              <a class="btn" href="${pageContext.request.contextPath}/user/repeatOrder?orderId=${order.orderId}">Repeat Order</a>
            </td>
          </tr>
        </c:forEach>
      </table>
      <a class="btn" href="${pageContext.request.contextPath}/user/home">Back to Home</a>
    </div>
  </body>
</html>




