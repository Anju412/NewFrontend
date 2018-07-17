package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;

@Controller
public class OrderController {

	@Autowired
	CartDAO cartDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@RequestMapping("/checkout")
	public String checkOutProcess(Model m,HttpServletRequest request){
		
		String username=(String)request.getUserPrincipal().getName();
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		
		m.addAttribute("cartItems",cartItems);
		m.addAttribute("totalPurchaseAmount",this.calcTotalPurchaseAmount(cartItems));
		return "MyOrder";
	}
	
	@RequestMapping("/payment")
	public String paymentProcess(Model m,HttpServletRequest request){
		
		String username=(String)request.getUserPrincipal().getName();

		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("totalPurchasedAmount", this.calcTotalPurchaseAmount(cartItems));
		return "Payment";
		
	}
	
	
	@RequestMapping(value="/paymentProcess",method=RequestMethod.POST)
	public String paymentProcessing(@RequestParam("paymenttype")String paymode,Model m,HttpServletRequest request){
		String username=(String)request.getUserPrincipal().getName();
		
		List<CartItem> cartItems=cartDAO.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		int totalPurchaseAmount=this.calcTotalPurchaseAmount(cartItems);
		m.addAttribute("totalPurchaseAmount", totalPurchaseAmount);
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setPaymentMode(paymode);
		System.out.println(orderDetail.getPaymentMode());
		orderDetail.setUsername(username);
		orderDetail.setTotalPurchaseAmount(totalPurchaseAmount);
		orderDetail.setOrderDate(new java.util.Date());
		
		orderDetailDAO.insertOrderDetail(orderDetail);
		orderDetailDAO.updateOrderDetail(username);
		
		m.addAttribute("orderDetail",orderDetail);
		
		return "Receipt";
	}
	
	public int calcTotalPurchaseAmount(List<CartItem> cartItems) {
		int totalPurchaseAmount=0;
		int count=0;
		while(count<cartItems.size()) {
			CartItem cartItem=cartItems.get(count);
			totalPurchaseAmount=totalPurchaseAmount+(cartItem.getQuantity()*cartItem.getPrice());
			count++;
		}
		return totalPurchaseAmount;
	
	
	}
}
