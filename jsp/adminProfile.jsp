<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin Profile - Korporate Kitchen</title>
    <style>
      body {
        background: #f4f4f4;
        font-family: 'Arial', sans-serif;
        padding: 20px;
      }
      .container {
        width: 50%;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
      }
      p {
        font-size: 1.2em;
        line-height: 1.5;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
        display: block;
        text-align: center;
        margin-top: 20px;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Admin Profile</h2>
      <p><strong>Name:</strong> ${admin.userName}</p>
      <p><strong>Email:</strong> ${admin.email}</p>
      <p><strong>Contact:</strong> ${admin.contact}</p>
      <a class="btn" href="${pageContext.request.contextPath}/admin/dashboard">Back to Dashboard</a>
    </div>
  </body>
</html>
