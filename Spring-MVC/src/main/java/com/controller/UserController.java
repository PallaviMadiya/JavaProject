package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping("/about")
	public String aboutPage() {
		return "about";
	}
	
	@RequestMapping("register")
	public String registerPage() {
		return "register";
	}
}
