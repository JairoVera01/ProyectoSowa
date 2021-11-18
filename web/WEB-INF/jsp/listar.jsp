<%-- 
    Document   : listar
    Created on : 30-oct-2021, 20:16:25
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
        <title>AldanaGo - Listar Socios</title>
    </head>
    <body>
        <br>
        <h1 class="text-center text-muted"><u>LISTADO DE SOCIOS</u></h1>
        <div class="container-md">
        <p>
            <a href="<c:url value ="home.htm"></c:url>"class="btn btn-dark">
            Regresar</a>
            <a href="<c:url value ="add.htm"></c:url>"class="btn btn-dark">
            Crear nuevo socio</a>
        </p>
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <th>ID</th>
                <th>Nombre</th>
                <th>Tipo de restaurante</th>
                <th>Correo</th>
                <th>Telefono</th>
                <th>Opciones</th>
            </thead>
            <tbody>
                 <c:forEach items="${datosPersona}" var="dato">
                    <tr>
                        <td><c:out value="${dato.id}"></c:out></td>
                        <td><c:out value="${dato.nombre}"></c:out></td>
                        <td><c:out value="${dato.tipo_restaurante}"></c:out></td>
                        <td><c:out value="${dato.correo}"></c:out></td>
                        <td><c:out value="${dato.telefono}"></c:out></td>
                        <td><a href="ver.htm?id=${dato.id}" class="btn btn-dark">Ver Productos</a>
                            <a href="edit.htm?id=${dato.id}" class="btn btn-warning">Editar</a>
                            <a href="" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>                    
                </c:forEach>
            </tbody>
        </table>
        </div>
    </body>
</html>
