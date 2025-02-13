package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
    // Find an admin by email (if needed)
    Admin findByEmail(String email);
}
