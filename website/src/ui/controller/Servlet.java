package ui.controller;

import domain.db.db;
import domain.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    db productendb = new db();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String naam = request.getParameter("naam");
        String prijsstuk = request.getParameter("prijsstuk");
        String prijsdoos = request.getParameter("prijsdoos");
        String stock = request.getParameter("stock");
        Product toevoegen = new Product(naam, Integer.parseInt(prijsstuk), Integer.parseInt(prijsdoos), Integer.parseInt(stock));
        if (Integer.parseInt(prijsstuk) > 0) {
            productendb.add(toevoegen);
            doGet(request, response);
        } else {
            request.setAttribute("prijsstuk", Integer.parseInt(prijsstuk));
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("getaantaal", productendb.gettotaal());
        request.setAttribute("productenarray", productendb.getproducten());
        request.getRequestDispatcher("assortiment.jsp").forward(request,response);
    }
}
