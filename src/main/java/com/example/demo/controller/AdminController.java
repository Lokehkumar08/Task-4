package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/admin/dashboard")
    public String dashboard() {
        // Ensure adminDashboard.jsp exists under /WEB-INF/jsp/
        return "adminDashboard";
    }
}
