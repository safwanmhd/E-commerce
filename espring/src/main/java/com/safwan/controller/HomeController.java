package com.safwan.controller;
//created safwan
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.safwan.dao.UserManagerDao;
import com.safwan.model.Users;

@Controller
public class HomeController {
	@Autowired
	private UserManagerDao userManager;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam("email") String email, @RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();
		Users user = userManager.getUser(email);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				mv.setViewName("register");
				mv.addObject("users", user);
			} else {
				mv.setViewName("index");
				mv.addObject("faild", "Incorrect password ");
			}
		} else {
			mv.setViewName("index");
			mv.addObject("faild", "User is not valid");
		}

		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUser(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("gender") String gender, @RequestParam("pass") String password,
			@RequestParam("phone") long phone) {

		Users user = new Users(name, gender, email, password, phone);
		userManager.registerUser(user);
		return "userList";
	}

	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String userList(Model model) {

		List<Users> users = userManager.getAllUsers();
		model.addAttribute("users", users);
		return "userList";
	}
}
