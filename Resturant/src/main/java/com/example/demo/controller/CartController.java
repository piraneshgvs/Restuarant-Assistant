package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Foods;
import com.example.demo.model.Item;
import com.example.demo.dao.RestuarantImplDAO;

@Controller
@RequestMapping(value = "cart")
public class CartController {
	 

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {
		return "cart/index";
	}
	

	@RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") int id, HttpSession session) {
		
		 ModelAndView modelAndView = new ModelAndView("Menu");
		
		
		RestuarantImplDAO productModel = new RestuarantImplDAO();
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productModel.find(id), 1));
			session.setAttribute("cart", cart);
			modelAndView.addObject("addMsg", "Trainee Added Successfully");
		} else {
			@SuppressWarnings("unchecked")
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Item(productModel.find(id), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
			modelAndView.addObject("addMsg", "Trainee Added Successfully");
		}
		
		return "redirect:/view/Menu";
	}

	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") int id, HttpSession session) {
		RestuarantImplDAO productModel = new RestuarantImplDAO();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/summary";
	}

	@RequestMapping(value= "alter-minus/{id}", method=RequestMethod.POST)
	public String minus(@PathVariable("id") int id, HttpSession session){
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		if(cart.get(index).getQuantity()!=1) {
			int quantity = cart.get(index).getQuantity() - 1;
			cart.get(index).setQuantity(quantity);
		}
		session.setAttribute("cart", cart);
		return "redirect:/summary";
	}
	
	@RequestMapping(value= "alter-plus/{id}", method=RequestMethod.POST)
	public String plus(@PathVariable("id") int id, HttpSession session){
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		if(cart.get(index).getQuantity()!=0) {
			int quantity = cart.get(index).getQuantity() + 1;
			cart.get(index).setQuantity(quantity);
		}
		session.setAttribute("cart", cart);
		return "redirect:/summary";
	}
	
	private int exists(int id, List<Item> cart) {
	
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getFid()==id) {
				System.out.println(i);
				return i;
			}
		}
		return -1;
	}

}