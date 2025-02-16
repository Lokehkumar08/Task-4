<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Registration Successful - Korporate Kitchen</title>
    <style>
      body {
        background: #f8f8f8;
        font-family: 'Helvetica', sans-serif;
        text-align: center;
        padding-top: 80px;
      }
      .container {
        width: 50%;
        margin: 0 auto;
        background: #fff;
        padding: 30px;
        border: 1px solid #ddd;
        border-radius: 8px;
      }
      h2 {
        color: #27ae60;
      }
      .btn {
        display: inline-block;
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
        margin-top: 20px;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Registration Successful! 🎉</h2>
      <a class="btn" href="${pageContext.request.contextPath}/admin/login">Go to Login</a>
    </div>
  </body>
</html>
