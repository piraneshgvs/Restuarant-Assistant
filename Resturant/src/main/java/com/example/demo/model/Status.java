package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Status {

	private String available;

	public Status(String available) {
		super();
		this.available = available;
	}

	public Status() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}
}
