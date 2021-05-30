package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.model.Feedback;
import com.example.demo.model.Foods;


@Component
public class LoginImplDAO implements LoginDAO {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	
	private static List<Feedback> feedList;

	@Override
	public String login(String id, String password, String role) {
		
		String query = "select name,password from staff where phone=? and staff_role=?";
		List<Map<String, Object>> logins = jdbcTemplate.queryForList(query,id,role);
		String name=null;
		String user_password=null;
		for(Map<String, Object> login : logins) {
			
			 name=(String) login.get("name");
			 user_password=(String) login.get("password");
			
			
		}
		try {
			if(user_password.equals(password)){
				return name;
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
	public List<Feedback> getAllFeedback() {
		
		feedList = new ArrayList<Feedback>();
		String query = "select phonenumber,feedback from user order by time desc";
		List<Map<String, Object>> feedRows = jdbcTemplate.queryForList(query);

		for (Map<String, Object> feedRow : feedRows) {
			
			String phone = (String) feedRow.get("phonenumber");
			String feedback = (String) feedRow.get("feedback");
			
			System.out.println(feedback);
			feedList.add(new Feedback(phone,feedback));
		}
	
		return feedList;
		
		
	}

}
