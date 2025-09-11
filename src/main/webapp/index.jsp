<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="com.pandey.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pandey Ki Dukan</title>
<link rel="stylesheet" href="CSS/style.css">
	</head>
	<body>
	<div class="site">
	<header>
	<div class="brand">Pandey Ki Dukan</div>
	<nav>
	<a href="index.jsp">Home</a>
	<a href="contact.jsp">Contact</a>
		<%
            String username = (String) session.getAttribute("username");
            if (username != null) {
        %>
            <a href="addProduct.jsp">Add Product</a>
            <a href="cart.jsp">Cart</a>
            <a href="logout.jsp">Logout</a>
        <%
            } else {
        %>
            <a href="signin.jsp">SignIn</a>
        <%
            }
       	%>
	</nav>
	</header>
	
	<h2 class="welcome">
    <%
        if(username != null){
            out.print("Welcome, " + username + "!");
        } else {
            out.print("Welcome, Guest!");
        }
    %>
</h2>
	
	
	<main>
	<section class="hero">
	<h1>Minimal gear. Maximum style.</h1>
	<p>Discover curated essentials — monochrome clothing, accessories and home gear. Clean design, honest prices.</p>
	</section>
	
	
	<section id="products">
	<div class="section-title">Products</div>
	<div class="grid">
	<!-- Backend data will be injected here -->

	<%
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM product");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                String pname = rs.getString("pname");
                String pdesc = rs.getString("pdesc");
                double price = rs.getDouble("price");
                boolean available = rs.getBoolean("available");
    %>
                <div class="card">
                    <h1><%= pname %></h1>
                    <p class="desc"><%= pdesc %></p>
                    <p><strong>₹ <%= price %></strong></p>
                    <%
					    int avail = rs.getInt("available");
					%>
					<p class="avail">Status: <%= (avail == 1 ? "Available" : "Out of stock") %></p>
					<% if(available) { %>
					<%
			            if (username != null) {
			        %>
			        <form action="cart" method="post">
				            <input type="hidden" name="pname" value="<%= pname %>">
				            <input type="hidden" name="price" value="<%= price %>">
				            <button type="submit">Add to Cart</button>
				        </form>
			        <%
			            } else {
			        %>
				            <a href="signin.jsp">Add to Cart</a>
			        <%
			            }
			       	%>
				    <% } %>
                </div>
    <%
            }
            rs.close();
            ps.close();
            con.close();
        } catch(Exception e){
            out.println("Error: " + e.getMessage());
        }
    %>
	</div>
	</section>
	</main>
	
	
	<footer>
	<div>© PandeyKiDukan — All rights reserved</div>
	</footer>
	</div>
</body>
</html>