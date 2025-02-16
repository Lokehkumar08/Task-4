<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin Registration - Korporate Kitchen</title>
    <style>
      body {
        background: #f4f7f8;
        font-family: 'Verdana', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 400px;
        margin: 60px auto;
        background: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
        margin-bottom: 20px;
      }
      input[type="text"],
      input[type="email"],
      input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
      }
      input[type="submit"] {
        background-color: #e67e22;
        color: #fff;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Admin Registration</h2>
      <form action="${pageContext.request.contextPath}/admin/register" method="post">
        Name: <input type="text" name="userName" required /><br/>
        Email: <input type="email" name="email" required /><br/>
        Password: <input type="password" name="password" required /><br/>
        Contact: <input type="text" name="contact" required /><br/>
        <input type="submit" value="Register" />
      </form>
    </div>
  </body>
</html>
