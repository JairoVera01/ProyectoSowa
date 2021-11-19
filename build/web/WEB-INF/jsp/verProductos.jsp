<%-- 
    Document   : verProductos
    Created on : 18/11/2021, 02:05:34 PM
    Author     : jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg">
        <title>Aldana Go - Ver::${productos.nombre_socio}</title>
    </head>
    <body>
             <div class="container-md">
            <nav arial-label ="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listar.htm">LISTADO DE PRECIOS</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">
                        ${productos.nombre_socio}
                    </li>
                </ol>
                
            </nav>
                    <div class="container-md border border-primary p-1">
                    <div class="row ">
                       <%--Imagen seccion del 30% --%> 
                          <article class="col-6 col-12-xsmall work-item">
                              <img src="${productos.url_producto}" height="100%" width="100%" /></a>				
                          </article> 
                       
                       <%--Datos seccion del 70% --%> 
                          <article class="col-6 col-12-xsmall work-item">
                              <div clases="d-flex justify-content-around">
                                  <h1> Socio: ${productos.nombre_socio} </h1><hr><h2 class="text-secondary">Precio: S/.${productos.precio}</h2>
                              </div>
                              <hr>
                              <h3 class="text-secondary"> ${productos.producto}  </h3>
                              <hr>
                              <div class="d-flex justify-content-around">                                 
                                  <p class="fst-italic">Resumen: ${productos.nombre_socio} </p>
                                  <p class="fw-bold" >Precio: S/.${productos.precio} (soles) </p>  
                              </div> 
                                 
                          </article> 
                                   
                    </div>
                    </div>
        </div>
    </body>
</html>