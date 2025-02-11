<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Orders List</title>
    <style>
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2 align="center">Orders List</h2>
    <table>
        <tr>
            <th>Order ID</th>
            <th>User ID</th>
            <th>Items</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Order Date</th>
            <th>Status</th>
        </tr>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.orderID}</td>
                <td>${order.userID}</td>
                <td>${order.items}</td>
                <td>${order.quantity}</td>
                <td>${order.totalPrice}</td>
                <td>${order.orderDate}</td>
                <td>${order.orderStatuuss}</td> <!-- Updated to use orderStatuuss -->
            </tr>
        </c:forEach>
    </table>
</body>
</html>
