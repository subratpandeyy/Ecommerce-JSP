# Pandey Ki Dukan – eCommerce Website
## Project Overview

**Pandey Ki Dukan** is a simple eCommerce web application built using **Java JSP/Servlets** with **MySQL** as the database.
Users can **browse products**, **add products to a cart**, and view their shopping cart. Admins can manage the products through a separate admin panel.

---

## Features

* User Registration and Login
* Product Listing with availability status
* Add Products to Cart
* Session-based shopping cart (per user)
* Admin login panel to manage products
* Traditional JSP and Servlet implementation (no frameworks)

---

## Technologies Used

* **Frontend:** HTML, CSS, JSP
* **Backend:** Java Servlets, JDBC
* **Database:** MySQL
* **Server:** Apache Tomcat

---

## Installation

1. **Clone the repository:**

```bash
git clone <repository_url>
```

2. **Set up MySQL database:**

   * Create a database, e.g., `ecommerce`
   * Create tables:

```sql
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pname VARCHAR(100),
    pdesc TEXT,
    price DOUBLE,
    available BOOLEAN
);

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);
```

3. **Add an admin user:**

```sql
INSERT INTO admin (username, password) VALUES ('admin', 'admin123');
```

4. **Configure DB connection in `DBConnection.java`:**

```java
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "password");
```

5. **Deploy the project to Apache Tomcat** and start the server.

---

## Usage

1. **User Flow:**

   * Sign up or Sign in
   * Browse products
   * Add products to cart
   * View cart contents

2. **Admin Flow:**

   * Go to `adminLogin.jsp`
   * Login with admin credentials
   * Add or manage products

---

## Project Structure

```
PandeyKiDukan/
│
├── src/
│   └── com/pandey/
│       ├── DBConnection.java
│       ├── signin.java
│       ├── signup.java
│       ├── AddProduct.java
│       ├── CartServlet.java
│       └── AdminLoginServlet.java
│
├── WebContent/
│   ├── index.jsp
│   ├── signin.jsp
│   ├── signup.jsp
│   ├── addProduct.jsp
│   ├── cart.jsp
│   ├── adminLogin.jsp
│   ├── adminDashboard.jsp
│   ├── CSS/
│   │   └── style.css
│   └── JS/ (if any)
│
└── README.md
```

---

## Admin Panel

* Admin can login via `adminLogin.jsp`
* Add new products using `addProduct.jsp`
* Manage products (update/delete) can be implemented in future versions

---

## Future Enhancements

* Implement **product categories** and search
* Add **checkout and payment integration**
* Implement **password hashing** for security
* Improve **UI with Bootstrap or Tailwind**
* Track **user orders and history**

---

**Project Status:** Learning / College project / MVP
