package com.example.rentapart.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
    @GetMapping("/")
    public String products(){
        int a = 3;;
        return "products";
    }
int a = 3;
}
