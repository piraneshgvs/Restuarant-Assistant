package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Component;


import com.example.demo.model.Foods;

@Component
public interface LoginDAO {

	public int insertNewstaff(String name,String id,String password,String role);
	public String login(String id, String password);
	
}
