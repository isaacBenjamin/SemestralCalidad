<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@page import="java.sql.*" %>
<title>Ciencias Naturales</title>
</head>
<body>

  <%
  Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ProyectoSemestral","root","");
Statement dbstatement = dbconect.createStatement();

String nombre = request.getParameter("nombre");
String cedula = request.getParameter("cedula");
String fecha_inicio = request.getParameter("fecha_inicio");
String insertarsql= "INSERT INTO Curso_ciencias_naturales(nombre, cedula, fecha_inicio) VALUES ('" +nombre+ "','" +cedula+ "','" +fecha_inicio+ "')";
dbstatement.executeUpdate(insertarsql);
response.sendRedirect("HOME.html");
 %>
</body>
</html>