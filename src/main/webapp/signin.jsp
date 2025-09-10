<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn Page</title>
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="site">
	<header>
	  <div class="brand">Pandey Ki Dukan</div>
	  <nav>
	    <a href="index.jsp">Home</a>
	    <a href="contact.jsp">Contact</a>
	    <a href="signin.jsp">Sign In</a>
	  </nav>
	</header>
	
	<main>
	  <section class="form-section">
	    <h1>Sign In</h1>
	    <form action="signin" method="post">
	      <label for="email">Email</label><br>
	      <input type="text" id="email" name="email"><br><br>
	
	      <label for="password">Password</label><br>
	      <input type="password" id="password" name="password"><br><br>
	
	      <button type="submit">Sign In</button>
	    </form>
	    <p>Don’t have an account? <a href="signup.jsp">Sign Up</a></p>
	  </section>
	</main>
	
	<footer>
	  <div>© Pandey Ki Dukan — All rights reserved</div>
	</footer>
		</div>
</body>
</html>