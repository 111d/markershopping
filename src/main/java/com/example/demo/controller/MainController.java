package com.example.demo.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {

    @RequestMapping("/")
    public ModelAndView forward(){
        String name="Index";
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName(name);
        return modelAndView;
    }
}
