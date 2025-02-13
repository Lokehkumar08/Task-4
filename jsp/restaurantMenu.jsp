<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Restaurant Menu - Korporate Kitchen</title>
    <style>
      body {
        background: #fdf6e3;
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 80%;
        margin: 0 auto;
      }
      h2 {
        color: #e74c3c;
      }
      ul {
        list-style: none;
        padding: 0;
      }
      li {
        background: #fff;
        border: 1px solid #ddd;
        margin: 10px 0;
        padding: 15px;
        border-radius: 5px;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin-left: 10px;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Menu for ${restaurant.restaurantName} 🍲</h2>
      <ul>
        <c:forEach var="item" items="${menuItems}">
          <li>
            <strong>${item.itemName}</strong> - ${item.itemDescription} - $${item.price}
            <form action="${pageContext.request.contextPath}/user/addToCart" method="post" style="display:inline;">
              <input type="hidden" name="itemId" value="${item.itemId}" />
              <input class="btn" type="submit" value="Add to Cart" />
            </form>
          </li>
        </c:forEach>
      </ul>
      <br/>
      <a class="btn" href="${pageContext.request.contextPath}/user/home">Back to Home</a>
    </div>
  </body>
</html>

