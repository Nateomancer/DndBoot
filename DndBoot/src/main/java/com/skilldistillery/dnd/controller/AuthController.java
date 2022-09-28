package com.skilldistillery.dnd.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.dnd.entities.User;
import com.skilldistillery.dnd.service.AuthService;

@CrossOrigin({"*", "http://localhost:4303"})
@RestController
public class AuthController {

	@Autowired
	private AuthService authService;
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public User register(@RequestBody User user, HttpServletResponse res) {
	    if (user == null) {
	        res.setStatus(400);
	    }
	    user = authService.register(user);
	    return user;
	}

	@RequestMapping(path = "/authenticate", method = RequestMethod.GET)
	public User authenticate(Principal principal) {
		System.out.println(principal);
	    return authService.getUserByUsername(principal.getName());
	}
}
