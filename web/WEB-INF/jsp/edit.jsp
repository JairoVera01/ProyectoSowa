<%-- 
    Document   : add
    Created on : 16-oct-2021, 21:47:56
    Author     : luisromerountiveros
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>Aldana Go - Editar Socios</title>
    </head>
    <body>
        <div class="container-md">
            <br>
          
            <form:form method="post" commandName="persona" modelAttribute="persona">
                <form:errors path="*" element ="div" cssClass="alert alert-danger"></form:errors>
                <h1 class="text-center text-muted"><u>EDITAR SOCIOS</u></h1>
                <hr>
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
                <br>
                <hr>
                <p>
                    <input type="submit" value="Actualizar socio" class="btn btn-dark">
                </p>
            </form:form>
            
        </div>
    </body>
</html>
