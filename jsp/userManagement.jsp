<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>User Management - Korporate Kitchen</title>
    <style>
      body {
        background: #fff;
        font-family: 'Arial', sans-serif;
        padding: 20px;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }
      th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 5px 10px;
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
    <h2>User Management</h2>
    <table>
      <tr>
        <th>User ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Action</th>
      </tr>
      <c:forEach var="user" items="${users}">
        <tr>
          <td>${user.userId}</td>
          <td>${user.userName}</td>
          <td>${user.email}</td>
          <td>${user.contact}</td>
          <td>
            <form action="${pageContext.request.contextPath}/admin/deleteUser" method="post">
              <input type="hidden" name="userId" value="${user.userId}" />
              <input class="btn" type="submit" value="Delete" onclick="return confirm('Are you sure?');" />
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>
    <a class="btn" href="${pageContext.request.contextPath}/admin/dashboard">Back to Dashboard</a>
  </body>
</html>
