<%-- 
    Document   : librosAlumno
    Created on : 18/07/2019, 01:29:28 PM
    Author     : Melissa Gpe. PÃ¯Â¿Â½rez Cabrera <perezc.melissa@gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="com.fractal.practicante.bibliospa.modelo.beans.Libro" %>

<h1>Libros del alumno</h1>
<%
    ArrayList<Libro> libros = (ArrayList<Libro>)request.getAttribute("listaLibrosAlumno");
    request.setAttribute("libros", libros);
%>

<c:choose>
    <c:when test="${libros.size() > 0}">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Titulo</th>
                    <th scope="col">Autor</th>
                    <th scope="col">Numero de paginas</th>
                    <th scope="col"></th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="libro" items="${libros}">
                    <tr>
                        <td>${libro.getTitulo()}</td>
                        <td>${libro.getAutor()}</td>
                        <td>${libro.getNumPaginas()}</td>
                        <td>
                            <button class="btn btn-danger">Borrar Libro</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>                       
        </table>
    </c:when>

    <c:when test="${libros.size() < 1}">
        <img src="assets/img/imagen.png">
    </c:when>
</c:choose>
        
<div class="row">
    <button id="agregarLibros" class="btn btn-success">Agregar Libros</button>
    <button id="verListaLibrosRegistrados" class="btn btn-primary">Ver lista de libros</button>
    <button id="cerrarSesion" class="btn btn-warning">Cerrar Sesion</button>
</div>