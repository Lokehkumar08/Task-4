<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Payment Gateway - Korporate Kitchen</title>
    <style>
      body {
        background: #f7f7f7;
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        text-align: center;
      }
      .container {
        width: 400px;
        margin: 100px auto;
        background: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
      }
      h2 {
        color: #27ae60;
      }
      p {
        font-size: 1.2em;
        margin: 20px 0;
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
      .btn {
        background-color: #e67e22;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        margin-top: 20px;
        display: inline-block;
      }
      .btn:hover {
        background-color: #d35400;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Payment Gateway</h2>
      <p>Total Amount: $${totalPrice}</p>
      <form action="${pageContext.request.contextPath}/user/confirmPayment" method="post">
        <!-- Payment form fields can be added here -->
        <input type="submit" value="Confirm Payment" />
      </form>
      <a class="btn" href="${pageContext.request.contextPath}/user/cart">Back to Cart</a>
    </div>
  </body>
</html>
