<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>User Home Dashboard - Korporate Kitchen</title>
    <style>
      body {
        background: #fcfcfc;
        font-family: 'Verdana', sans-serif;
        margin: 0;
        padding: 0;
      }
      .container {
        width: 90%;
        margin: 20px auto;
        padding: 20px;
      }
      h2 {
        color: #e74c3c;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin: 5px;
      }
      .btn:hover {
        background-color: #d35400;
      }
      ul {
        list-style: none;
        padding: 0;
      }
      li {
        background: #f9f9f9;
        margin: 10px 0;
        padding: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Welcome, ${user.userName} 👋</h2>
      <a class="btn" href="${pageContext.request.contextPath}/user/profile">Profile</a>
      <h3>Available Restaurants</h3>
      <ul>
        <c:forEach var="restaurant" items="${restaurants}">
          <li>
            ${restaurant.restaurantName}
            <a class="btn" href="${pageContext.request.contextPath}/user/restaurantMenu?restaurantId=${restaurant.restaurantId}">View Menu</a>
          </li>
        </c:forEach>
      </ul>
      <br/>
      <a class="btn" href="${pageContext.request.contextPath}/user/cart">View Cart</a>
    </div>
  </body>
</html>
