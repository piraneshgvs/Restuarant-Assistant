package com.example.demo.model;






import javax.validation.constraints.NotEmpty;

import org.springframework.stereotype.Component;

@Component
public class Foodlist {

	
	private int fid;
	private int fQua;
	private int fTot;
	@NotEmpty(message = "Table number is required")
	private int tableno;
	public Foodlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Foodlist(int fid, int fQua, int fTot,int tableno) {
		super();
		this.fid = fid;
		this.fQua = fQua;
		this.fTot = fTot;
		this.tableno = tableno;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getfQua() {
		return fQua;
	}
	public void setfQua(int fQua) {
		this.fQua = fQua;
	}
	public int getfTot() {
		return fTot;
	}
	public void setfTot(int fTot) {
		this.fTot = fTot;
	}
	public int getTableno() {
		return tableno;
	}
	public void setTableno(int tableno) {
		this.tableno = tableno;
	}
	@Override
	public String toString() {
		return "Foodlist [fid=" + fid + ", fQua=" + fQua + ", fTot=" + fTot + ", tableno=" + tableno + "]";
	}
	
}
