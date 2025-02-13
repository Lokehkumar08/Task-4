package com.example.demo.service;

import com.example.demo.model.Cart;
import com.example.demo.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    
    @Autowired
    private CartRepository cartRepository;
    
    @Override
    public Cart saveCartItem(Cart cart) {
        return cartRepository.save(cart);
    }
    
    @Override
    public List<Cart> getCartItemsByUserId(int userId) {
        return cartRepository.findByUserUserId(userId);
    }
    
    @Override
    public void deleteCartItem(int id) {
        cartRepository.deleteById(id);
    }
}

