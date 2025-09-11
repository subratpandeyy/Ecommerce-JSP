<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product - Pandey Ki Dukan</title>
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
%>

<div class="site">
<header>
    <div class="brand">Pandey Ki Dukan</div>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="contact.jsp">Contact</a>
        <a href="logout.jsp">Logout</a>
    </nav>
</header>

<h2>Add a New Product</h2>
<p>Welcome, Admin! Please fill the form below to add a product.</p>

<form action="addProduct" method="post">
    <table>
        <tr>
            <td>Product Name:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><textarea name="desc" required></textarea></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" name="price" step="0.01" required></td>
        </tr>
        <tr>
            <td>Available:</td>
            <td><Select name="available">
            	<option value="true">Yes</option>
            	<option value="false">No</option>
            </Select></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Add Product"></td>
        </tr>
    </table>
</form>

<footer>
    <div>© PandeyKiDukan — All rights reserved</div>
</footer>
</div>
</body>
</html>
