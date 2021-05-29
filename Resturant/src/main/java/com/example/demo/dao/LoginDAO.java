package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.model.Feedback;
import com.example.demo.model.Foods;

@Component
public interface LoginDAO {

	
	public String login(String id, String password);
	public List<Feedback> getAllFeedback();
}
