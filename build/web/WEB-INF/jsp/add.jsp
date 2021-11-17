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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-md">
            <nav aria-label ="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listar.htm">Listado de Personas</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">
                        
                        <a href="#">Agregar Persona</a>
                    </li>
                </ol>                
            </nav>

            <form:form method="post" commandName="persona" modelAttribute="persona">
                <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                <h1 class="text-center text-muted" >Agregar nueva persona</h1>
                <p>
                <form:label path="nombre">Nombre: </form:label>
                <form:input path="nombre" cssClass="form-control"></form:input>
                </p>
                <p>
                <form:label path="apellido">Apellido: </form:label> 
                <form:input path="apellido" cssClass="form-control"></form:input>                    
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
                <form:label path="resumen_cv">Hoja de Vida: </form:label>
                <form:textarea path="resumen_cv" cssClass="form-control"></form:textarea>
                </p>
                <p>
                <form:label path="url_imagen">Direccion de la imagen: </form:label>
                <form:input path="url_imagen" cssClass="form-control"></form:input>
                </p>
                <p>
                <input type="submit" value="Agregar Nueva Personas" class="btn btn-dark">
                </p>
            </form:form>
        </div>
    </body>
</html>
