package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Ordergrandtotal {

	private long  total;

	public Ordergrandtotal() {
		super();
		
	}

	

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public Ordergrandtotal(long total) {
		super();
		this.total = total;
	}
	@Override
	public String toString() {
		return "Ordergrandtotal [total=" + total + "]";
	}
}
