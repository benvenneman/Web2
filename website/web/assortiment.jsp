<%@ page import="domain.db.db" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="domain.model.Product" %>
<% ArrayList<Product> productenarray = (ArrayList<Product>) request.getAttribute("productenarray"); %>
<%int getaantaal = (int) request.getAttribute("getaantaal");%>
<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Eco Buiscuits | Home</title>
</head>

<body class="" id="darkmode-style">
<div class="page-container">
    <header>
        <div class="container">
            <nav>
                <img src="https://res.cloudinary.com/ucll-proximus/image/upload/c_scale,w_40/v1576087842/EcoBiscuits/logo_sshctf.png" class="header-logo" alt="">
                <label for="toggle">&#9776;</label>
                <input type="checkbox" id="toggle" />
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="Servlet" class="current">Assortiment</a></li>
                    <li><a href="toevoegen.jsp">Toevoegen</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <table>
            <tr>
                <th>Naam</th>
                <th>Prijs / #</th>
                <th>Prijs per doos</th>
                <th>Aantal stuks in stock</th>
                <th>Verwijder</th>
            </tr>
            <% for(Product p : productenarray) { %>
            <tr>
                <td><%= p.getNaam() %></td>
                <td><%= p.getPrijsstuk() %></td>
                <td><%= p.getPrijsdoos() %></td>
                <td><%= p.getAantalstock() %></td>
                <td><a href="#">remove</a></td>
            </tr>
            <% } %>
        </table>
        <p>Totaal = <%=getaantaal%></p>
    </main>
    <footer>
        <div class="container-footer">
            <div class="openinguren">
                <p>Maandag - Vrijdag: 8u tot 17u</p>
                <p>Weekend en feestdagen gesloten.</p>
            </div>
            <div class="social">
                <p>Volg ons:
                    <a href="https://www.facebook.com/ecobiscuits.be/" target="_blank"><img src="https://res.cloudinary.com/ucll-proximus/image/upload/c_scale,h_20,q_40,w_20/v1576087827/EcoBiscuits/facebook_mkeeln.png" alt="Volg ons op facebook"></a>
                </p>
            </div>
            <div class="adres">
                <p>Lossing 21 • B 2260 Heultje-Westerlo • België</p>
                <p>info@ecobiscuits.be</p>
            </div>
        </div>
    </footer>
</div>
</body>



</html>
