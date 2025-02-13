package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.model.Restaurant;
import com.example.demo.model.MasterMenuItem;
import com.example.demo.model.Cart;
import com.example.demo.model.Order;
import com.example.demo.service.UserService;
import com.example.demo.service.RestaurantService;
import com.example.demo.service.MasterMenuItemService;
import com.example.demo.service.CartService;
import com.example.demo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private RestaurantService restaurantService;
    
    @Autowired
    private MasterMenuItemService masterMenuItemService;
    
    @Autowired
    private CartService cartService;
    
    @Autowired
    private OrderService orderService;
    
    // Registration – when form is submitted from register.jsp
    @PostMapping("/register")
    public String registerUser(@ModelAttribute User user, Model model) {
        User savedUser = userService.saveUser(user);
        model.addAttribute("registeredUser", savedUser);
        return "registerSuccess";
    }
    
    // Login – when form is submitted from login.jsp
    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            HttpSession session,
                            Model model) {
        User user = userService.getUserByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("user", user);
            return "redirect:/user/home";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }
    
    // Home Dashboard – displays logged-in user info and list of restaurants
    @GetMapping("/home")
    public String userHome(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        model.addAttribute("user", user);
        List<Restaurant> restaurants = restaurantService.getAllRestaurants();
        model.addAttribute("restaurants", restaurants);
        return "homeDashboard";
    }
    
    // User Profile Page
    @GetMapping("/profile")
    public String userProfile(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        model.addAttribute("user", user);
        return "userProfile";
    }
    
    // Display Restaurant Menu – expects ?restaurantId= parameter
    @GetMapping("/restaurantMenu")
    public String restaurantMenu(@RequestParam int restaurantId, Model model) {
        Restaurant restaurant = restaurantService.getRestaurantById(restaurantId);
        if (restaurant == null) {
            model.addAttribute("error", "Restaurant not found");
            return "homeDashboard";
        }
        List<MasterMenuItem> menuItems = masterMenuItemService.getMenuItemsByRestaurantId(restaurantId);
        model.addAttribute("restaurant", restaurant);
        model.addAttribute("menuItems", menuItems);
        return "restaurantMenu";
    }
    
    // Add a menu item to the cart
    @PostMapping("/addToCart")
    public String addToCart(@RequestParam int itemId, HttpSession session) {
        MasterMenuItem item = masterMenuItemService.getMenuItemById(itemId);
        if (item != null) {
            User user = (User) session.getAttribute("user");
            Cart cart = new Cart();
            cart.setUser(user);
            cart.setItemName(item.getItemName());
            cart.setItemPrice(item.getPrice());
            cart.setTotalPrice(item.getPrice()); // assume quantity 1
            cartService.saveCartItem(cart);
        }
        return "redirect:/user/cart";
    }
    
    // Display Cart Dashboard
    @GetMapping("/cart")
    public String viewCart(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        List<Cart> cartItems = cartService.getCartItemsByUserId(user.getUserId());
        model.addAttribute("cartItems", cartItems);
        BigDecimal total = BigDecimal.ZERO;
        for (Cart c : cartItems) {
            total = total.add(c.getTotalPrice());
        }
        model.addAttribute("totalPrice", total);
        return "cartDashboard";
    }
    
    // Remove an item from the cart
    @PostMapping("/removeFromCart")
    public String removeFromCart(@RequestParam int cartId) {
        cartService.deleteCartItem(cartId);
        return "redirect:/user/cart";
    }
    
    // Display Payment Gateway Page
    @GetMapping("/payment")
    public String paymentGateway(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        List<Cart> cartItems = cartService.getCartItemsByUserId(user.getUserId());
        BigDecimal total = BigDecimal.ZERO;
        for (Cart c : cartItems) {
            total = total.add(c.getTotalPrice());
        }
        model.addAttribute("totalPrice", total);
        return "paymentGateway";
    }
    
    // Confirm Payment and Place Order
    @PostMapping("/confirmPayment")
    public String confirmPayment(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        List<Cart> cartItems = cartService.getCartItemsByUserId(user.getUserId());
        BigDecimal total = BigDecimal.ZERO;
        StringBuilder items = new StringBuilder();
        for (Cart c : cartItems) {
            total = total.add(c.getTotalPrice());
            items.append(c.getItemName()).append(", ");
        }
        Order order = new Order();
        order.setUser(user);
        order.setItems(items.toString());
        order.setQuantity(cartItems.size());
        order.setTotalPrice(total);  // Use setTotalPrice() instead of setTotal_price()
        order.setOrder_status(Order.OrderStatus.completed);
        orderService.saveOrder(order);
        for (Cart c : cartItems) {
            cartService.deleteCartItem(c.getCartId());
        }
        model.addAttribute("message", "Payment Successful! Your order has been placed.");
        return "redirect:/user/home";
    }
}

