<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact - Pandey Ki Dukan</title>
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<div class="site">

<header>
  <div class="brand">Pandey Ki Dukan</div>
  <nav>
    <a href="index.jsp">Home</a>
    <a href="shop.jsp">Shop</a>
    <a href="contact.jsp">Contact</a>
    <a href="signin.jsp">Sign In</a>
  </nav>
</header>

<main>
  <section class="form-section">
    <h1>Contact Us</h1>
    <p>We’d love to hear from you. Fill out the form below or reach us at <strong>support@pandeykidukan.com</strong>.</p>

    <form action="contact" method="post">
      <label for="name">Your Name</label><br>
      <input type="text" id="name" name="name"><br><br>

      <label for="email">Your Email</label><br>
      <input type="text" id="email" name="email"><br><br>

      <label for="message">Message</label><br>
      <textarea id="message" name="message" rows="5"></textarea><br><br>

      <button type="submit">Send Message</button>
    </form>
  </section>
</main>

<footer>
  <div>© Pandey Ki Dukan — All rights reserved</div>
</footer>

</div>
</body>
</html>
