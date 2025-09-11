package com.pandey;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		String username = req.getParameter("name");
        String email = req.getParameter("email");
        String passwordString = req.getParameter("password");
        String confirmPassString = req.getParameter("confirm");
        
        if(passwordString.equals(confirmPassString)) {
        	try {
				Connection conn = DBConnection.getConnection();
				String sqlString = "Insert into user(username, email, pass) values(?, ?, ?);";
				PreparedStatement ps = conn.prepareStatement(sqlString);
				ps.setString(1, username);
	        	ps.setString(2, email);
	        	ps.setString(3, passwordString);
	        	
	        	int rowsInserted = ps.executeUpdate();
	            if (rowsInserted > 0) {
	                pw.println("Data inserted successfully!");
	            }
	            
	            res.sendRedirect("signin.jsp");
	            
//	            ResultSet rs = ps.executeQuery("Select * from user;");
//	            while(rs.next()) {
//	            	String dbName = rs.getString("username");
//	            	String dbEmail = rs.getString("email");
//	            	String dbPass = rs.getString("pass");
//	            	
//	            	pw.println("<html><body>");
//	                pw.println("<h2>Form Submission Result</h2>");
//	                pw.println("<p>Name: " + dbName + "</p>");
//	                pw.println("<p>Email: " + dbEmail + "</p>");
//	                pw.println("<p>Password: " + dbPass + "</p>");
//	                pw.println("</body></html>");
//	            }
	            
	            ps.close();
	            conn.close();
			}
        	
			 catch (Exception e) {
				e.printStackTrace();
			}
        }
        else {
        	System.out.println("Password doesn't match!");
        	pw.println("Password doesn't match!");
        }
	}
}
