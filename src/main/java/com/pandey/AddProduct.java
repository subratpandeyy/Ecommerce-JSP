package com.pandey;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        String nameString = req.getParameter("name");
        String descString = req.getParameter("desc");
        String priceString = req.getParameter("price");
        String availParam = req.getParameter("available");
        boolean availBoolean = Boolean.parseBoolean(availParam);

        PrintWriter pw = res.getWriter();

        try {
            Connection con = DBConnection.getConnection();
            System.out.println("DB Connected!");

            String sqlString = "INSERT INTO product(pname, pdesc, price, available) VALUES(?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sqlString);
            ps.setString(1, nameString);
            ps.setString(2, descString);
            ps.setString(3, priceString);
            ps.setBoolean(4, availBoolean);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                res.sendRedirect("index.jsp");
            } else {
                pw.println("Error Occurred");
            }
        } catch (Exception e) {
            pw.println(e);
        }
    }
}
