package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class CutomerId {

	private static String cutid;

	public static String getCutid() {
		return cutid;
	}

	public static void setCutid(String cutid) {
		CutomerId.cutid = cutid;
	}

	@Override
	public String toString() {
		return "CutomerId []";
	}

	public CutomerId() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	
	
}
