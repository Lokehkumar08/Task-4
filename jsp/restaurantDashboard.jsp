<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Restaurant Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #fff3e0;
        font-family: 'Tahoma', sans-serif;
        margin: 0;
        padding: 20px;
        text-align: center;
      }
      h2 {
        color: #e74c3c;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        margin: 10px;
        text-decoration: none;
        border-radius: 5px;
        cursor: pointer;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <h2>Restaurant Dashboard</h2>
    <a class="btn" href="${pageContext.request.contextPath}/restaurant/manageMenu">Manage Menu</a>
    <a class="btn" href="${pageContext.request.contextPath}/restaurant/orders">View Orders</a>
    <a class="btn" href="${pageContext.request.contextPath}/restaurant/logout">Logout</a>
  </body>
</html>

