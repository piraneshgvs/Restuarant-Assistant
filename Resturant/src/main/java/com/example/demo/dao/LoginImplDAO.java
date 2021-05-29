package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


@Component
public class LoginImplDAO implements LoginDAO {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public String login(String id, String password) {
		
		String query = "select name,password from staff where phone=?";
		List<Map<String, Object>> logins = jdbcTemplate.queryForList(query,id);
		String name=null;
		String user_password=null;
		for(Map<String, Object> login : logins) {
			
			 name=(String) login.get("name");
			 user_password=(String) login.get("password");
			
			
		}
			if(user_password.equals(password)){
				return name;
			}
			else {
				return "false";
			}
			
			
		
		
		
		
		
	}

}
