package com.example.demo.model;

public class Item {

	private Foods product;
	private int quantity;

	public Foods getProduct() {
		return product;
	}

	public void setProduct(Foods product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Item() {
	}

	public Item(Foods product, int quantity) {
		this.product = product;
		this.quantity = quantity;
	}

}
