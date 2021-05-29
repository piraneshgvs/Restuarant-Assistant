package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Feedback {

	
	private String id;
	private String feedback;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	@Override
	public String toString() {
		return "Feedback [id=" + id + ", feedback=" + feedback + "]";
	}
	public Feedback(String id, String feedback) {
		super();
		this.id = id;
		this.feedback = feedback;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
