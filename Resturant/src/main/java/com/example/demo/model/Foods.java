package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Foods {
	private int fid;
	private String fName;
	private int fPrice;
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
	@Override
	public String toString() {
		return "Foods [fid=" + fid + ", fName=" + fName + ", fPrice=" + fPrice + "]";
	}
	public Foods(int fid, String fName, int fPrice) {
		super();
		this.fid = fid;
		this.fName = fName;
		this.fPrice = fPrice;
	}
	public Foods() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
