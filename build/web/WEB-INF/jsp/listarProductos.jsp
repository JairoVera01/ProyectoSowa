<%-- 
    Document   : listarProductos
    Created on : 18/11/2021, 08:20:38 PM
    Author     : jairo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg">
        <title>AldanaGo - Listar Productos</title>
    </head>
    <body>
        <br>
        <h1 class="text-center text-muted"><u>LISTADO DE PRODUCTOS</u></h1>        
        <div class="container-md">
        <p>
            <a href="<c:url value ="productos.htm"></c:url>"class="btn btn-dark">
            Regresar</a>
            <a href="<c:url value =""></c:url>"class="btn btn-dark">
            Crear nuevo producto</a>
            <hr>
        </p>
        
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <th>ID</th>
                <th>Nombre Socio</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Opciones</th>
            </thead>
            <tbody>
                 <c:forEach items="${datosProducto}" var="dato">
                    <tr>
                        <td><c:out value="${dato.id}"></c:out></td>
                        <td><c:out value="${dato.nombre_socio}"></c:out></td>
                        <td><c:out value="${dato.producto}"></c:out></td>
                        <td><c:out value="S/.${dato.precio}"></c:out></td>
                        <td>
                            <a href="verProductos.htm?id=${dato.id}" class="btn btn-dark">Ver Producto</a>
                        </td>
                    </tr>                    
                </c:forEach>
            </tbody>
        </table>
        <hr>
        </div>
    </body>
</html>
