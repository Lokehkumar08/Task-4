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
        position: relative;
      }
      h2 {
        color: #27ae60;
      }
      .total-amount {
        font-size: 1.2em;
        margin: 20px 0;
      }
      .payment-method {
        margin: 20px 0;
      }
      .btn {
        background-color: #e67e22;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        margin: 10px;
        text-decoration: none;
      }
      .btn:hover {
        background-color: #d35400;
      }
      /* Modal styling */
      .modal {
        display: none;
        position: fixed;
        z-index: 100;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0,0,0,0.5);
      }
      .modal-content {
        background-color: #fff;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 300px;
        border-radius: 8px;
        text-align: center;
      }
      .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
        cursor: pointer;
      }
      .close:hover,
      .close:focus {
        color: black;
        text-decoration: none;
      }
      input[type="text"],
      input[type="number"],
      input[type="date"] {
        width: 90%;
        padding: 8px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Payment Gateway</h2>
      <div class="total-amount">Total Amount: $${totalPrice}</div>
      
      <div class="payment-method">
        <h3>Payment Method</h3>
        <button class="btn" onclick="openModal('upiModal')">UPI</button>
        <button class="btn" onclick="openModal('cardModal')">Debit/Credit Card</button>
      </div>
      
      <br/>
      <button class="btn" onclick="location.href='${pageContext.request.contextPath}/user/cart'">Back to Cart</button>
    </div>
    
    <!-- UPI Modal -->
    <div id="upiModal" class="modal">
      <div class="modal-content">
        <span class="close" onclick="closeModal('upiModal')">&times;</span>
        <h3>UPI Payment</h3>
        <p>Total Amount: $${totalPrice}</p>
        <input type="text" id="upiNumber" placeholder="Enter UPI ID" required />
        <br/>
        <button class="btn" onclick="payUPI()">Pay</button>
      </div>
    </div>
    
    <!-- Card Modal -->
    <div id="cardModal" class="modal">
      <div class="modal-content">
        <span class="close" onclick="closeModal('cardModal')">&times;</span>
        <h3>Card Payment</h3>
        <p>Total Amount: $${totalPrice}</p>
        <input type="text" id="cardName" placeholder="Name on Card" required />
        <br/>
        <input type="number" id="cardCVV" placeholder="CVV" required />
        <br/>
        <input type="date" id="cardExpiry" placeholder="Expiry Date" required />
        <br/>
        <button class="btn" onclick="payCard()">Pay</button>
      </div>
    </div>
    
    <!-- Success Modal -->
    <div id="successModal" class="modal">
      <div class="modal-content">
        <span class="close" onclick="closeModal('successModal')">&times;</span>
        <h3>Payment Successful!</h3>
        <p>Your payment has been processed successfully.</p>
        <button class="btn" onclick="redirectToConfirm()">OK</button>
      </div>
    </div>
    
    <script>
      function openModal(modalId) {
        document.getElementById(modalId).style.display = "block";
      }
      function closeModal(modalId) {
        document.getElementById(modalId).style.display = "none";
      }
      
      function payUPI() {
        var upi = document.getElementById("upiNumber").value;
        if(upi.trim() === "") {
          alert("Please enter your UPI ID");
          return;
        }
        // Simulate payment processing
        closeModal('upiModal');
        openModal('successModal');
      }
      
      function payCard() {
        var name = document.getElementById("cardName").value;
        var cvv = document.getElementById("cardCVV").value;
        var expiry = document.getElementById("cardExpiry").value;
        if(name.trim() === "" || cvv.trim() === "" || expiry.trim() === "") {
          alert("Please fill all card details");
          return;
        }
        // Simulate payment processing
        closeModal('cardModal');
        openModal('successModal');
      }
      
      function redirectToConfirm() {
        closeModal('successModal');
        // Redirect to confirmPayment endpoint
        window.location.href = "${pageContext.request.contextPath}/user/confirmPayment";
      }
    </script>
  </body>
</html>

