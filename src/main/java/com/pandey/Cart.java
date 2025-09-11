package com.pandey;

import java.util.List;
import java.util.ArrayList;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class Cart extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) {
		res.setContentType("text/html");

		String pnameString = req.getParameter("pname");
		double priceDouble = Double.parseDouble(req.getParameter("price"));

		HttpSession session = req.getSession();

		// Specify type arguments for List and ArrayList
		List<String> cart = (List<String>) session.getAttribute("cart");
		if (cart == null) {
		    cart = new ArrayList();
		}

		cart.add(pnameString + " - ₹" + priceDouble);
		session.setAttribute("cart", cart);

		res.sendRedirect("cart.jsp");


	}
}
