<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Manage Menu - Restaurant Dashboard</title>
    <style>
      body {
        background: #fdf6e3;
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 90%;
        margin: 0 auto;
      }
      h2 {
        color: #e74c3c;
      }
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }
      table, th, td {
        border: 1px solid #ddd;
      }
      th, td {
        padding: 10px;
        text-align: center;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin: 5px;
        cursor: pointer;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Manage Menu</h2>
      <a class="btn" href="${pageContext.request.contextPath}/restaurant/addMenuItem">Add New Item</a>
      <table>
        <tr>
          <th>Item Name</th>
          <th>Description</th>
          <th>Price</th>
          <th>Type</th>
          <th>Actions</th>
        </tr>
        <c:forEach var="item" items="${menuItems}">
          <tr>
            <td>${item.itemName}</td>
            <td>${item.itemDescription}</td>
            <td>$${item.price}</td>
            <td>${item.itemType}</td>
            <td>
              <a class="btn" href="${pageContext.request.contextPath}/restaurant/editMenuItem?itemId=${item.itemId}">Edit</a>
              <form action="${pageContext.request.contextPath}/restaurant/deleteMenuItem" method="post" style="display:inline;">
                <input type="hidden" name="itemId" value="${item.itemId}" />
                <input class="btn" type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this item?');" />
              </form>
            </td>
          </tr>
        </c:forEach>
      </table>
      <br/>
      <a class="btn" href="${pageContext.request.contextPath}/restaurant/dashboard">Back to Dashboard</a>
    </div>
  </body>
</html>

