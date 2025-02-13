<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Login - Korporate Kitchen</title>
    <style>
      body {
        background: #f0f8ff;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 400px;
        margin: 100px auto;
        background: #fff;
        padding: 30px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
        text-align: center;
      }
      h2 {
        color: #e74c3c;
      }
      input[type="email"],
      input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
      }
      input[type="submit"] {
        background-color: #e67e22;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1em;
      }
      input[type="submit"]:hover {
        background-color: #d35400;
      }
      .error {
        color: red;
        margin-bottom: 10px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Login</h2>
      <c:if test="${not empty error}">
        <p class="error">${error}</p>
      </c:if>
      <form action="${pageContext.request.contextPath}/user/login" method="post">
        <input type="email" name="email" placeholder="Email" required /><br/>
        <input type="password" name="password" placeholder="Password" required /><br/>
        <input type="submit" value="Login" />
      </form>
    </div>
  </body>
</html>

