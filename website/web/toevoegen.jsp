<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li><a href="Servlet">Assortiment</a></li>
                    <li><a href="toevoegen.jsp" class="current">Toevoegen</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <div class="contact-first">
            <div class="contactformulier">
                <form action="Servlet" method="POST" novalidate>
                    <label for="naam">Naam</label>
                    <input type="text" id="naam" name="naam" class="naam">

                    <label for="prijsstuk">Prijs per stuk</label>
                    <input type="number" id="prijsstuk" name="prijsstuk" class="prijsstuk">

                    <label for="prijsdoos">Prijs per doos</label>
                    <input type="number" id="prijsdoos" name="prijsdoos" class="prijsdoos">

                    <label for="stock">Aantal stuks in stok</label>
                    <input type="number" id="stock" name="stock" class="stock">

                    <input type="submit" value="Verzenden">
                </form>
            </div>
        </div>
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
