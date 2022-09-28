package com.skilldistillery.dnd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skilldistillery.dnd.entities.User;

public interface UserRepository  extends JpaRepository<User, Integer>{

	User findByUsername(String username);

	
	
}
