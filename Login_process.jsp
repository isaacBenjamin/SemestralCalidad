<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="UTF-8">
    <%@page import="java.sql.*" %>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="normalize.css" />
      <link href="home.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="forms.css" />
      <title>Proceso Login</title>
      <style type="text/css">
        body {
          background-image: none;
          background-color: #f6f6f6;
          aling-items:
        }

        .SoloCienciaLogo img {
          border-bottom: 0.7rem double RGB(66, 66, 66);
        }

        .links a {
          padding: 14px 16px;
          text-decoration: none;
          color: black;
        }

        .links a:hover {
          background-color: lightblue;
          border-radius: 20px;
        }
      </style>
  </head>

  <body>

    <% Class.forName("com.mysql.jdbc.Driver"); Connection
      
      conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/ProyectoSemestral","root",""); 
      
      Statement dbstatement=conexion.createStatement(); 
      String username=request.getParameter("username"); 
      String password=request.getParameter("password"); 
      
      try{ PreparedStatement ConsultaBD=conexion.prepareStatement("SELECT * FROM Usuarios WHERE USERNAME=? AND PASSWORD=?");
      
      ConsultaBD.setString(1,username);
      ConsultaBD.setString(2,password); 
      
      ResultSet Resultado=ConsultaBD.executeQuery(); 
      
      if (Resultado.next())
        response.sendRedirect("HOME.html"); 
      } catch (Exception e){ out.println("--Error--<br>");
      out.println("Consulta Invalida");
      }
      %>

      <section class="SoloCienciaLogo">
        <img src="logos/SoloCiencia_logo.png" alt="Logo" />
      </section>

      <br><br>
      <main>

        <h1> Vaya! Parece que hubo un error, quizas tu usuario no existe.</h1>

        <div class="links">
          <a href="REGISTRO_USUARIO.html" style="margin-left: 50px">Registro de Usuarios</a>
          <a href="LOGIN_USUARIO.html" style="margin-left: 50px">Volver al Login</a>
        </div>

      </main>
  </body>
  </html>