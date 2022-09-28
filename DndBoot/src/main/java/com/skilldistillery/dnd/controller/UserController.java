package com.skilldistillery.dnd.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.dnd.entities.User;
import com.skilldistillery.dnd.service.UserService;

@RestController
@RequestMapping("api")
@CrossOrigin({ "*", "http://localhost:4303" })
public class UserController {

	@Autowired
	private UserService userSvc;

	// smoketest
	@GetMapping("test/users/{userId}")
	public User getUserForTest(@PathVariable Integer userId, HttpServletResponse res) {

		User user = userSvc.getUserById(userId);
		if (user == null) {
			res.setStatus(404);
		}
		return user;
	}

}
