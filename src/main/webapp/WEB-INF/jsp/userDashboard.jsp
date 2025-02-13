<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>User Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #fcfcfc;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 60%;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: #fff;
      }
      h2 {
        color: #e74c3c;
      }
      p {
        font-size: 1.1em;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Welcome, ${user.userName}</h2>
      <p><strong>Email:</strong> ${user.email}</p>
      <p><strong>Contact:</strong> ${user.contact}</p>
      <p><strong>Address:</strong> ${user.address}</p>
    </div>
  </body>
</html>
