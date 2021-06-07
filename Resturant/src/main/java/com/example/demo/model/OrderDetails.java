package com.example.demo.model;
import java.util.*;
import org.springframework.stereotype.Component;

@Component
public class OrderDetails {

	
	private String user_id;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "OrderDetails [user_id=" + user_id + "]";
	}

	public OrderDetails(String user_id) {
		super();
		this.user_id = user_id;
	}

	public OrderDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

}