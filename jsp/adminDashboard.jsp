<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin Dashboard - Korporate Kitchen</title>
    <style>
      body {
        margin: 0;
        font-family: 'Arial', sans-serif;
        background: #f8f8f8;
      }
      /* Header with hamburger icon */
      .header {
        background: #2c3e50;
        color: #fff;
        padding: 15px;
        position: relative;
      }
      .hamburger {
        font-size: 30px;
        cursor: pointer;
        position: absolute;
        left: 15px;
        top: 10px;
      }
      .header h2 {
        margin: 0;
        text-align: center;
      }
      /* Sidebar menu */
      .sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
        background-color: #34495e;
        overflow-x: hidden;
        transition: 0.3s;
        padding-top: 60px;
      }
      .sidebar a {
        padding: 10px 15px;
        text-decoration: none;
        font-size: 18px;
        color: #ecf0f1;
        display: block;
        transition: 0.3s;
      }
      .sidebar a:hover {
        background-color: #2c3e50;
      }
      .sidebar .closebtn {
        position: absolute;
        top: 10px;
        right: 20px;
        font-size: 30px;
      }
      /* Main content */
      .main {
        margin-left: 0;
        transition: margin-left 0.3s;
        padding: 20px;
      }
      .stats {
        margin: 20px 0;
        text-align: center;
      }
      .stats div {
        display: inline-block;
        margin: 0 15px;
        padding: 10px 20px;
        background: #e67e22;
        color: #fff;
        border-radius: 5px;
        font-size: 18px;
      }
    </style>
    <script>
      function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
      }
      function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
      }
    </script>
  </head>
  <body>
    <div class="header">
      <span class="hamburger" onclick="openNav()">&#9776;</span>
      <h2>Admin Dashboard</h2>
    </div>

    <div id="mySidebar" class="sidebar">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      <a href="${pageContext.request.contextPath}/admin/profile">Admin Profile</a>
      <a href="${pageContext.request.contextPath}/admin/users">User Management</a>
      <a href="${pageContext.request.contextPath}/admin/restaurants">Restaurant Management</a>
      <a href="${pageContext.request.contextPath}/admin/delivery">Delivery Agent Management</a>
    </div>

    <div id="main" class="main">
      <div class="stats">
        <div>Total Restaurants: ${totalRestaurants}</div>
        <div>Total Users: ${totalUsers}</div>
        <div>Total Delivery Agents: ${totalDeliveryAgents}</div>
      </div>
      <p>Welcome to the Admin Dashboard. Use the menu on the left to manage system users, restaurants, and delivery agents.</p>
    </div>
  </body>
</html>

