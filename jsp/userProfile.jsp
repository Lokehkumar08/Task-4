<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>User Profile - Korporate Kitchen</title>
    <style>
      body {
        background: #f4f4f4;
        font-family: 'Verdana', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .profile-container {
        width: 50%;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
      }
      h2 {
        color: #e74c3c;
      }
      p {
        font-size: 1.2em;
        line-height: 1.5em;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin-top: 10px;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="profile-container">
      <h2>User Profile</h2>
      <p><strong>Name:</strong> ${user.userName}</p>
      <p><strong>Email:</strong> ${user.email}</p>
      <p><strong>Contact:</strong> ${user.contact}</p>
      <p><strong>Address:</strong> ${user.address}</p>
      <a class="btn" href="${pageContext.request.contextPath}/user/home">Back to Home</a>
    </div>
  </body>
</html>

