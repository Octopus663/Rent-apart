package com.example.rentapart.controllers;

import com.example.rentapart.models.User;
import com.example.rentapart.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.create(user)) {
            model.addAttribute("errorMessage", "User with this name " + user.getUsername() + " already exist");
            return "registration";
        }
        return "redirect:/login";
    }
        @GetMapping("/hello")
        public String securityUrl () {
            return "hello";
        }
    }