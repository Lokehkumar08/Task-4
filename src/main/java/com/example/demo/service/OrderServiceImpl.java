package com.example.demo.service;

import com.example.demo.model.Order;
import com.example.demo.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;
    
    @Override
    public Order saveOrder(Order order) {
        return orderRepository.save(order);
    }
    
    @Override
    public Order getOrderById(int id) {
        return orderRepository.findById(id).orElse(null);
    }
    
    @Override
    public List<Order> getOrdersByUserId(int userId) {
        return orderRepository.findByUserUserId(userId);
    }
    
    @Override
    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }
    
    @Override
    public void deleteOrder(int id) {
        orderRepository.deleteById(id);
    }
    
    @Override
    public List<Order> getOrdersByRestaurantId(int restaurantId) {
        return orderRepository.findByRestaurant_RestaurantId(restaurantId);
    }
}



