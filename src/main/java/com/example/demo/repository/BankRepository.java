package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.Bank;

public interface BankRepository extends JpaRepository<Bank, Integer> {
    // Additional custom queries can be added here
}
