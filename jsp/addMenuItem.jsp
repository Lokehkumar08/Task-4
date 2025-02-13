<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add New Menu Item - Restaurant Dashboard</title>
    <style>
      body {
        background: #fdf6e3;
        font-family: 'Segoe UI', sans-serif;
        margin: 0;
        padding: 20px;
      }
      .container {
        width: 400px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
      }
      h2 {
        color: #e74c3c;
        text-align: center;
      }
      input[type="text"],
      input[type="number"],
      textarea {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
      }
      input[type="submit"] {
        background-color: #e67e22;
        color: #fff;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: #d35400;
      }
      .btn {
        display: block;
        text-align: center;
        margin-top: 10px;
        background-color: #e67e22;
        color: #fff;
        padding: 8px 12px;
        border-radius: 5px;
        text-decoration: none;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Add New Menu Item</h2>
      <form action="${pageContext.request.contextPath}/restaurant/addMenuItem" method="post">
        Item Name: <input type="text" name="itemName" required /><br/>
        Description: <textarea name="itemDescription" required></textarea><br/>
        Price: <input type="number" name="price" step="0.01" required /><br/>
        Type: <input type="text" name="itemType" /><br/>
        <input type="submit" value="Add Item" />
      </form>
      <a class="btn" href="${pageContext.request.contextPath}/restaurant/manageMenu">Back to Manage Menu</a>
    </div>
  </body>
</html>

