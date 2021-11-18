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
        <title>AldanaGo - Añadir Socios</title>
    </head>
    <body>
        <div class="container-md">
            <nav aria-label ="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listar.htm" class="btn btn-dark"> Listado de Socios</a>
                    </li>
                    <li class="" aria-current="page"> 
                        <a href="#" class="btn btn-dark"> Agregar Socios</a>
                    </li>
                </ol>                
            </nav>

            <form:form method="post" commandName="persona" modelAttribute="persona">
                <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                <h1 class="text-center text-muted" ><u>AGREGAR NUEVO SOCIOS</u></h1>
                <p>
                <form:label path="nombre">Nombre: </form:label>
                <form:input path="nombre" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="tipo_restaurante">Tipo de restaurante: </form:label> 
                <form:input path="tipo_restaurante" cssClass="form-control"></form:input>                    
                </p>
                <p>
                <form:label path="correo">Direccion de correo: </form:label>
                <form:input path="correo" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="telefono">Telefono: </form:label>
                <form:input path="telefono" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="resumen_cv">Descripcion: </form:label>
                <form:textarea path="resumen_cv" cssClass="form-control"></form:textarea>
                </p>
                <p>
                <form:label path="url_imagen">Direccion de la imagen: </form:label>
                <form:input path="url_imagen" cssClass="form-control"></form:input>
                </p>
                <p>
                <input type="submit" value="AGREGAR NUEVO SOCIO" class="btn btn-dark">
                </p>
            </form:form>
        </div>
    </body>
</html>
