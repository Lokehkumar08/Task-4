<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Payment Confirmation - Korporate Kitchen</title>
    <style>
      body {
        background: #f7f7f7;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 20px;
        text-align: center;
      }
      .container {
        width: 500px;
        margin: 100px auto;
        background: #fff;
        padding: 30px;
        border: 1px solid #ccc;
        border-radius: 8px;
      }
      h2 {
        color: #27ae60;
      }
      p {
        font-size: 1.2em;
        margin: 20px 0;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Payment Confirmation</h2>
      <p>${message}</p>
      <a class="btn" href="${pageContext.request.contextPath}/user/home">Go to Home</a>
    </div>
  </body>
</html>
