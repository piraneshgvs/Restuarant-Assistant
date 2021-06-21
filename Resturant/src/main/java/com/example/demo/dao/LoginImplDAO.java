package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;


import com.example.demo.model.Foods;
import com.example.demo.model.StaffRole;


@Component
public class LoginImplDAO implements LoginDAO {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private StaffRole staffRole;
	
	

	@Override
	public String login(String id, String password) {
		
		String query = "select name,password,staff_role from staff where phone=?";
		List<Map<String, Object>> logins = jdbcTemplate.queryForList(query,id);
		String name=null;
		String user_password=null;
		String page=null;
		for(Map<String, Object> login : logins) {
			
			 name=(String) login.get("name");
			 user_password=(String) login.get("password");
			 page=(String) login.get("staff_role");
			
		}
		try {
			if(user_password.equals(password)){
				staffRole.setName(name);
				staffRole.setPage(page);
				return "true";
			}
			else {
				return "false";
			}
		}
		catch(Exception e){
			return "false";
		}
			

		
		
		
	}

	
	@Override
	public int insertNewstaff(String name,String id, String password, String role) {
	
		String query="insert into staff values(?,?,?,?)";
		int out = jdbcTemplate.update(query,name,id,password,role);

		
		return out;
	}

}
