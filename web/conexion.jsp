<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Final</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>      
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark btn-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#"><h5>Proyecto Final</h5> <span class="sr-only">(current)</span></a>
                </li>
               <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Disponible
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                       <a class="dropdown-item" href="lista.jsp">Lista del registro</a>
                       <a class="dropdown-item" href="libros.jsp">Libros a escoger</a>
                    </div>
                </li>
              </ul>
            </div>
        </nav>
        <div class="container-md" style="min-height: 900px;">       
          <center>
            <h1 class="mt-5 mb-5"> Entrega de Proyecto Final </h1>          
            <h1 class="mt-3 mb-3"> Programacion II </h1>          
            <h1 class="mt-3 mb-3"> Juan Pablo Escobar </h1>          
            <h1 class="mt-3 mb-3"> Mario ALberto Cruz Peña </h1>          
          </center>
        </div>
        <div>
        <center>
            <h1>Conexion a base de datos</h1>
            <%
                Connection conn = null;
                Statement st = null;
                String url = "jdbc:mysql://localhost:3306/proyecto";
                String us = "root";
                String pass = "";
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = (Connection)DriverManager.getConnection(url,us,pass);
                    st = conn.createStatement();
                    out.println("Conexion exitosa");
                }catch(Exception ex){
                    out.println("Conexion no exitosa");
                }
            %>
        </center>
        </div>
        <footer style="background: background;">
            Footer
        </footer>
    </body>
</html>
