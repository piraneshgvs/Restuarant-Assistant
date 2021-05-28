package com.example.demo.controller;
import java.util.*;


public class Demo {
		public static void main(String[] args) {
			List<List<Integer>> a = new ArrayList<List<Integer>>();
			List<Integer> b = new ArrayList<>();
			b.add(5);
			b.add(6);
			List<Integer> c = new ArrayList<>();
			c.add(7);
			c.add(8);
			a.add(c);
			a.add(b);
			for(List<Integer> i : a) {
				for(int j : i) {
					System.out.print(j);
				}
				System.out.println("/n");
			}
			
		}
}
