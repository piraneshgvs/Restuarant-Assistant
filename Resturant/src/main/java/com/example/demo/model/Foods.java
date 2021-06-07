package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Foods {
	private int fid;
	private String fName;
	private int fPrice;
	private String available;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public int getfPrice() {
		return fPrice;
	}
	public void setfPrice(int fPrice) {
		this.fPrice = fPrice;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	@Override
	public String toString() {
		return "Foods [fid=" + fid + ", fName=" + fName + ", fPrice=" + fPrice + ", available=" + available + "]";
	}
	public Foods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Foods(int fid, String fName, int fPrice, String available) {
		super();
		this.fid = fid;
		this.fName = fName;
		this.fPrice = fPrice;
		this.available = available;
	}
	
	
	
	

}
