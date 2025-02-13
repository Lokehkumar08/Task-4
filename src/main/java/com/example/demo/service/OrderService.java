package com.example.demo.service;

import com.example.demo.model.Order;
import java.util.List;

public interface OrderService {
    Order saveOrder(Order order);
    Order getOrderById(int id);
    List<Order> getOrdersByUserId(int userId);
    List<Order> getAllOrders();
    void deleteOrder(int id);
    List<Order> getOrdersByRestaurantId(int restaurantId);
}
