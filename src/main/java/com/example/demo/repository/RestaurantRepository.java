package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.Restaurant;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer> {
    // Find a restaurant by email (if needed)
    Restaurant findByEmail(String email);
}
