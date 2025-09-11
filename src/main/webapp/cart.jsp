<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Your Cart</title>
</head>
<body>
<h2>Your Shopping Cart</h2>

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
</body>
</html>
