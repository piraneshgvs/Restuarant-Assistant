package com.example.demo.model;


import org.springframework.stereotype.Component;

@Component
public class Orders {

	private String user_id;
	private String foodId;
	
	private int tableNo;
	private int quantity;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getFoodId() {
		return foodId;
	}
	public void setFoodId(String foodId) {
		this.foodId = foodId;
	}
	public int getTableNo() {
		return tableNo;
	}
	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "Orders [user_id=" + user_id + ", foodId=" + foodId + ", tableNo=" + tableNo + ", quantity=" + quantity
				+ "]";
	}
	public Orders(String user_id, String foodId, int tableNo, int quantity) {
		super();
		this.user_id = user_id;
		this.foodId = foodId;
		this.tableNo = tableNo;
		this.quantity = quantity;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}