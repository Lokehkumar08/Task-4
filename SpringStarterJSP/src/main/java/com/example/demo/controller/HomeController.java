//package com.example.demo.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.ui.Model;
// 
//@Controller
//public class HomeController {
// 
//    @GetMapping({"/", "/home"})
//    public String hello(@RequestParam(value = "name", defaultValue = "World", required = false) String name, Model model) {
//        model.addAttribute("name", name);
//        return "home"; // This must match hello.html in templates
//    }
//}
package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class HomeController {

    @RequestMapping("/form")
    public String showForm() {
        return "form";  
    }

    @RequestMapping("/result")
    public String showResult(@RequestParam(value = "name", required = false) String name, Model model) {
        model.addAttribute("name", name);  
        return "result";  // result.jsp
    }
}
