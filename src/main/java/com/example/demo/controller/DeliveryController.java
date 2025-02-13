package com.example.demo.controller;

import com.example.demo.model.Order;
import com.example.demo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequestMapping("/delivery")
public class DeliveryController {

    @Autowired
    private OrderService orderService;
    
    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        List<Order> orders = orderService.getAllOrders();
        model.addAttribute("orders", orders);
        // Ensure deliveryDashboard.jsp exists under /WEB-INF/jsp/
        return "deliveryDashboard";
    }
    
    @PostMapping("/acceptOrder")
    public String acceptOrder(@RequestParam int orderId) {
        Order order = orderService.getOrderById(orderId);
        if (order != null) {
            // Update order status to accepted (or completed)
            order.setOrder_status(Order.OrderStatus.completed);
            orderService.saveOrder(order);
        }
        return "redirect:/delivery/dashboard";
    }
    
    @PostMapping("/rejectOrder")
    public String rejectOrder(@RequestParam int orderId) {
        // Implement rejection logic if needed
        return "redirect:/delivery/dashboard";
    }
}


