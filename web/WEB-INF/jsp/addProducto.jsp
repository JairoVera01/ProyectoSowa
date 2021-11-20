<%-- 
    Document   : addProducto
    Created on : 19/11/2021, 02:52:09 PM
    Author     : jairo
--%>

<%-- 
    Document   : add
    Created on : 30-oct-2021, 21:00:11
    Author     : jairo
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg">
        <title>AldanaGo - Añadir Productos</title>
    </head>
    <body>
        <div class="container-md">
            <nav aria-label ="breadcrumb">
                             
            </nav>
            <br>
            <form:form method="post" commandName="productos" modelAttribute="productos">
                <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                <h1 class="text-center text-muted" ><u>AGREGAR NUEVO PRODUCTO</u></h1>
                <hr>
                <p>
                <form:label path="nombre_socio">Nombre Socio: </form:label>
                <form:input path="nombre_socio" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="producto">Producto: </form:label> 
                <form:input path="producto" cssClass="form-control"></form:input>                    
                </p>
                <p>
                <form:label path="precio">Precio: </form:label>
                <form:input path="precio" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="url_producto">Url Producto: </form:label>
                <form:input path="url_producto" cssClass="form-control"></form:input>
                </p>
               
               
                <hr>
                <p>
                <input type="submit" value="AGREGAR NUEVO PRODUCTO" class="btn btn-dark">
                </p>
            </form:form>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listarProductos.htm" class=""> Listado de Productos</a>  
                    </li>
                    <li class="breadcrumb-item" aria-current="page"> 
                        <a href="#" class=""> Agregar Productos</a>
                    </li>
                </ol>   
        </div>
    </body>
</html>

