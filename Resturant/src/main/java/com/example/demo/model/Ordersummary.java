package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Ordersummary {

	private String foodname;
	private int quantity;
	private long amount;
	public Ordersummary() {
		super();
		
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	public Ordersummary(String foodname, int quantity, long amount) {
		super();
		this.foodname = foodname;
		this.quantity = quantity;
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Ordersummary [foodname=" + foodname + ", quantity=" + quantity + ", amount=" + amount + "]";
	}
	
}
