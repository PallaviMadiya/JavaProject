package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao dao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<User> list = dao.getAllUser();
		m.addAttribute("list", list);

		return "index";
	}

	@RequestMapping("/register")
	public String Login() {
		return "register";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	
//	(1) Get Data From Form
//	@RequestMapping("/insertUser")
//	public void insertUser(HttpServletRequest request) {
//	 	String name = request.getParameter("name");
//		String con = request.getParameter("contact");
//		String add= request.getParameter("address");
//		String em = request.getParameter("email");
//		String pass = request.getParameter("password");
//		System.out.println(name+con+add+em+pass);
//	}
	
//	(2) Get Data From Form
//	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
//	public void insertUser(@RequestParam("name") String name, 
//	@RequestParam("contact") long con,
//			@RequestParam("address") String add, 
//	@RequestParam("email") String em,
//			@RequestParam("password") String pass, User u) {
//		System.out.println(u);
//}
	
	
//	(3) Get Data From Form
	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public RedirectView insertUser(@ModelAttribute User u,HttpServletRequest request) {
		dao.insertUser(u);
		System.out.println(u.getEmail());
		RedirectView re = new RedirectView();
		re.setUrl(request.getContextPath()+"/");
		return re;
	}

}
