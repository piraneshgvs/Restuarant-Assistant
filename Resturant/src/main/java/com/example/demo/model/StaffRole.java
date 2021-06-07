package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class StaffRole {

	private String name;
	private String page;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "StaffRole [name=" + name + ", page=" + page + "]";
	}
	public StaffRole(String name, String page) {
		super();
		this.name = name;
		this.page = page;
	}
	public StaffRole() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
