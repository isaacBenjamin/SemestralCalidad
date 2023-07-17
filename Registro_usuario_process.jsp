<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <%@page import="java.sql.*" %>
    <title>Registro Usuario</title>
  </head>
  <body>
    <% Class.forName("com.mysql.jdbc.Driver"); 
    
    Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ProyectoSemestral","root","");
    Statement dbstatement = dbconect.createStatement(); 
    String firstname = request.getParameter("firstname"); 
    String lastname = request.getParameter("lastname"); 
    String age = request.getParameter("age");
    String username = request.getParameter("username"); 
    String password = request.getParameter("password"); 
    String insertarsql= "INSERT INTO Usuarios(firstname, lastname, age, username,password) VALUES ('" +firstname+ "','" +lastname+ "','" +age+ "','" +username+ "','"+password+"')";
    dbstatement.executeUpdate(insertarsql);
    response.sendRedirect("LOGIN_USUARIO.html"); %>
  </body>
</html>
