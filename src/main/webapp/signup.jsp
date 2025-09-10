<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up - Pandey Ki Dukan</title>
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
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
    <h1>Create an Account</h1>
    <form action="signup" method="post">
      <label for="name">Full Name</label><br>
      <input type="text" id="name" name="name"><br><br>

      <label for="email">Email</label><br>
      <input type="text" id="email" name="email"><br><br>

      <label for="password">Password</label><br>
      <input type="password" id="password" name="password"><br><br>

      <label for="confirm">Confirm Password</label><br>
      <input type="password" id="confirm" name="confirm"><br><br>

      <button type="submit">Sign Up</button>
    </form>
    <p>Already have an account? <a href="signin.jsp">Sign In</a></p>
  </section>
</main>

<footer>
  <div>© Pandey Ki Dukan — All rights reserved</div>
</footer>

</div>
</body>
</html>
