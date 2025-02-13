<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Register - Korporate Kitchen</title>
    <style>
      body {
        background: #eef2f3;
        font-family: 'Verdana', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 400px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
      }
      input[type="text"],
      input[type="email"],
      input[type="password"],
      textarea {
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
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        font-size: 1em;
      }
      input[type="submit"]:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Register</h2>
      <form action="${pageContext.request.contextPath}/user/register" method="post">
        Name: <input type="text" name="userName" required /><br/>
        Email: <input type="email" name="email" required /><br/>
        Password: <input type="password" name="password" required /><br/>
        Contact: <input type="text" name="contact" /><br/>
        Address: <textarea name="address"></textarea><br/>
        <input type="submit" value="Register" />
      </form>
    </div>
  </body>
</html>

