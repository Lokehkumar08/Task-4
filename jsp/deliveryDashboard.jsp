<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Delivery Agent Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #eafaf1;
        font-family: 'Tahoma', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 90%;
        margin: 0 auto;
      }
      h2, h3 {
        color: #27ae60;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
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
        margin: 2px;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Delivery Agent Dashboard</h2>
      <h3>Orders to be Delivered</h3>
      <table>
        <tr>
          <th>Order ID</th>
          <th>User</th>
          <th>Items</th>
          <th>Total Price</th>
          <th>Action</th>
        </tr>
        <c:forEach var="order" items="${orders}">
          <tr>
            <td>${order.orderId}</td>
            <td>${order.user.userName}</td>
            <td>${order.items}</td>
            <td>$${order.totalPrice}</td>
            <td>
              <form action="${pageContext.request.contextPath}/delivery/acceptOrder" method="post" style="display:inline;">
                <input type="hidden" name="orderId" value="${order.orderId}" />
                <input class="btn" type="submit" value="Accept" />
              </form>
              <form action="${pageContext.request.contextPath}/delivery/rejectOrder" method="post" style="display:inline;">
                <input type="hidden" name="orderId" value="${order.orderId}" />
                <input class="btn" type="submit" value="Reject" />
              </form>
            </td>
          </tr>
        </c:forEach>
      </table>
      <a class="btn" href="${pageContext.request.contextPath}/delivery/dashboard">Refresh</a>
    </div>
  </body>
</html>
