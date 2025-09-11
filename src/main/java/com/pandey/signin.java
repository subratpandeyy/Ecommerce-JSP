package com.pandey;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		String emailString = req.getParameter("email");
		String passString = req.getParameter("password");
		
		PrintWriter pw = res.getWriter();
		
		try {
			Connection con = DBConnection.getConnection();
			String sqlString = "Select * from user where email=? and pass=?;";
			PreparedStatement ps = con.prepareStatement(sqlString);
			ps.setString(1, emailString);
			ps.setString(2, passString);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				HttpSession session = req.getSession();
				session.setAttribute("username", rs.getString("username"));
				session.setAttribute("email", rs.getString("email"));
				
				res.sendRedirect("index.jsp");
			}
			else {
				res.sendRedirect("signin.jsp");
			}
		}
		catch (Exception e) {
			pw.println("Exception found" + e);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
	    res.getWriter().println("Signin servlet is working (GET)!");
	}

}
