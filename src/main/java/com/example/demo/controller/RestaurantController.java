package com.example.demo.controller;

import com.example.demo.model.MasterMenuItem;
import com.example.demo.model.Order;
import com.example.demo.model.Restaurant;
import com.example.demo.service.MasterMenuItemService;
import com.example.demo.service.OrderService;
import com.example.demo.service.RestaurantService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

    @Autowired
    private RestaurantService restaurantService;
    
    @Autowired
    private MasterMenuItemService masterMenuItemService;
    
    @Autowired
    private OrderService orderService;
    
    // Existing endpoints for portal, registration, login, dashboard, etc.
    @GetMapping("/portal")
    public String restaurantPortal() {
        return "restaurantPortal";
    }
    
    @GetMapping("/register")
    public String showRegistrationForm() {
        return "restaurantRegister";
    }
    
    @PostMapping("/register")
    public String registerRestaurant(@ModelAttribute Restaurant restaurant, Model model) {
        Restaurant savedRestaurant = restaurantService.saveRestaurant(restaurant);
        model.addAttribute("savedRestaurant", savedRestaurant);
        return "restaurantRegisterSuccess";
    }
    
    @GetMapping("/login")
    public String showLoginForm() {
        return "restaurantLogin";
    }
    
    @PostMapping("/login")
    public String loginRestaurant(@RequestParam String email,
                                  @RequestParam String password,
                                  HttpSession session,
                                  Model model) {
        Restaurant restaurant = restaurantService.getRestaurantByEmail(email);
        if (restaurant != null && restaurant.getPassword().equals(password)) {
            session.setAttribute("restaurant", restaurant);
            return "redirect:/restaurant/dashboard";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "restaurantLogin";
        }
    }
    
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        return "restaurantDashboard";
    }
    
    // ---- New Endpoints for Menu Management (Manage Menu, Add, Edit, Delete) ----
    
    @GetMapping("/manageMenu")
    public String manageMenu(HttpSession session, Model model) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        List<MasterMenuItem> menuItems = masterMenuItemService.getMenuItemsByRestaurantId(restaurant.getRestaurantId());
        model.addAttribute("menuItems", menuItems);
        return "manageMenu";
    }
    
    @GetMapping("/addMenuItem")
    public String showAddMenuItemForm() {
        return "addMenuItem";
    }
    
    @PostMapping("/addMenuItem")
    public String addMenuItem(@ModelAttribute MasterMenuItem menuItem, HttpSession session) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        menuItem.setRestaurant(restaurant);
        masterMenuItemService.saveMenuItem(menuItem);
        return "redirect:/restaurant/manageMenu";
    }
    
    @GetMapping("/editMenuItem")
    public String showEditMenuItemForm(@RequestParam int itemId, Model model, HttpSession session) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        MasterMenuItem menuItem = masterMenuItemService.getMenuItemById(itemId);
        model.addAttribute("menuItem", menuItem);
        return "editMenuItem";
    }
    
    @PostMapping("/editMenuItem")
    public String editMenuItem(@ModelAttribute MasterMenuItem menuItem, HttpSession session) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        menuItem.setRestaurant(restaurant);
        masterMenuItemService.saveMenuItem(menuItem);
        return "redirect:/restaurant/manageMenu";
    }
    
    @PostMapping("/deleteMenuItem")
    public String deleteMenuItem(@RequestParam int itemId, HttpSession session) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        masterMenuItemService.deleteMenuItem(itemId);
        return "redirect:/restaurant/manageMenu";
    }
    
    // ---- New Endpoint for Restaurant Orders Dashboard ----
    
    @GetMapping("/orders")
    public String orders(HttpSession session, Model model) {
        Restaurant restaurant = (Restaurant) session.getAttribute("restaurant");
        if (restaurant == null) {
            return "redirect:/restaurant/login";
        }
        // Retrieve orders associated with the logged-in restaurant
        List<Order> orders = orderService.getOrdersByRestaurantId(restaurant.getRestaurantId());
        model.addAttribute("orders", orders);
        return "restaurantOrders";
    }
}

