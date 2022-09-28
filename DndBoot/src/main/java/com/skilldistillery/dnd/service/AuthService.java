package com.skilldistillery.dnd.service;

import com.skilldistillery.dnd.entities.User;

public interface AuthService {
	public User register(User user);
	public User getUserByUsername(String username);

}
