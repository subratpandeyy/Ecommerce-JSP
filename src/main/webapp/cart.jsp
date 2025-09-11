<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Your Cart</title>
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
	
	<h2>
    <%
        if(username != null){
            out.print("Welcome, " + username + "!");
        } else {
            out.print("Welcome, Guest!");
        }
    %>
</h2>
	
	
	<main>
	<h2>Your Shopping Cart</h2>
<div class="card">
	<%
	    List<String> cart = (List<String>) session.getAttribute("cart");
	    if(cart == null || cart.isEmpty()){
	%>
	    <p>Your cart is empty.</p>
	<%
	    } else {
	%>
	    <ul>
	    <% for(String item : cart){ %>
	        <li><%= item %></li>
	    <% } %>
	    </ul>
	    <a href="checkout.jsp">Proceed to Checkout</a>
	<%
	    }
	%>
</div>
	</main>
</div>

</body>
</html>
