<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Restaurant Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #fff3e0;
        font-family: 'Tahoma', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 80%;
        margin: 20px auto;
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
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Restaurant Dashboard</h2>
      <a class="btn" href="${pageContext.request.contextPath}/restaurant/manageMenu">Manage Menu</a>
      <a class="btn" href="${pageContext.request.contextPath}/restaurant/orders">View Orders</a>
    </div>
  </body>
</html>
