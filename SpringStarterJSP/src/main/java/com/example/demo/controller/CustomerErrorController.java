package com.example.demo.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError() {
        // Return the JSP page for error handling
        return "error"; // This refers to error.jsp in /WEB-INF/jsp/
    }
}