package com.brandon.demo;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "I LOVE MY Jingjing and Vicky and Jelly Belly";
    }
}
