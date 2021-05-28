package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Orders {

    private int userid;
	private String foodName;
	private int quantity;
	private int tid;
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	@Override
	public String toString() {
		return "Orders [foodName=" + foodName + ", quantity=" + quantity + ", tid=" + tid + "]";
	}
	public Orders(String foodName, int quantity, int tid) {
		super();
		this.foodName = foodName;
		this.quantity = quantity;
		this.tid = tid;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
