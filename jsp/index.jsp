<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Korporate Kitchen - Home</title>
    <style>
      body {
        background: linear-gradient(to right, #ffecd2, #fcb69f);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 80%;
        margin: 0 auto;
        text-align: center;
        padding: 50px 0;
      }
      h1 {
        color: #e74c3c;
        font-size: 3em;
        margin-bottom: 20px;
      }
      a {
        text-decoration: none;
        background-color: #e67e22;
        color: #fff;
        padding: 15px 30px;
        margin: 10px;
        border-radius: 5px;
        transition: background-color 0.3s;
      }
      a:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Welcome to Korporate Kitchen 🍽️</h1>
      <a href="${pageContext.request.contextPath}/login">Login</a>
      <a href="${pageContext.request.contextPath}/register">Register</a>
    </div>
  </body>
</html>
