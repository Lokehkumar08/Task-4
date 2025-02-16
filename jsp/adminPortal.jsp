<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin Portal - Korporate Kitchen</title>
    <style>
      body {
        background: linear-gradient(to right, #dfe9f3, #ffffff);
        font-family: 'Segoe UI', sans-serif;
        text-align: center;
        padding-top: 80px;
      }
      h1 {
        color: #2c3e50;
        margin-bottom: 40px;
      }
      .btn {
        display: inline-block;
        background-color: #e67e22;
        color: #fff;
        padding: 15px 30px;
        margin: 20px;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <h1>Admin Portal</h1>
    <a class="btn" href="${pageContext.request.contextPath}/admin/login">Login</a>
    <a class="btn" href="${pageContext.request.contextPath}/admin/register">Register</a>
  </body>
</html>
