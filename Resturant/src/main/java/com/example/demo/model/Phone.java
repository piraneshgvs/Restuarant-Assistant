package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Phone {

	
	
	private static String userid;

	public static String getUserid() {
		return userid;
	}

	public static void setUserid(String userid) {
		Phone.userid = userid;
	}



	
}



