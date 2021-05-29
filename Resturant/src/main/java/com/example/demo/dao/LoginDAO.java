package com.example.demo.dao;

import org.springframework.stereotype.Component;

@Component
public interface LoginDAO {

	
	public String login(String id, String password);
}
