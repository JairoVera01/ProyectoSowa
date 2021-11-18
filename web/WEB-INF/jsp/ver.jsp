<%-- 
    Document   : ver
    Created on : 30-oct-2021, 19:45:32
    Author     : jairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver::${persona.nombre}</title>
    </head>
    <body>
             <div class="container-md">
            <nav arial-label ="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listar.htm">Listado de personas</a>
                    </li>
                    <li class="breadcrumb-item" aria-current="page">
                        ${persona.nombre}
                    </li>
                </ol>
                
            </nav>
                    <div class="container-md border border-primary p-1">
                    <div class="row ">
                       <%--Imagen seccion del 30% --%> 
                          <article class="col-6 col-12-xsmall work-item">
                              <img src="${persona.url_imagen}" height="100%" width="100%" /></a>				
                          </article> 
                       
                       <%--Datos seccion del 70% --%> 
                          <article class="col-6 col-12-xsmall work-item">
                              <div clases="d-flex justify-content-around">
                                  <h1> ${persona.nombre} </h1><h2 class="text-secondary">${persona.tipo_restaurante}</h2>
                              </div>
                              
                              <hr>
                              <h3 class="text-secondary"> ${persona.resumen_cv}  </h3>
                              
                              <div class="d-flex justify-content-around">
                                  <p class="fst-italic">${persona.correo} </p>
                                  <p class="fw-bold" >${persona.telefono}  </p>
                              </div> 
                          </article> 
                    </div>
                    </div>
        </div>
    </body>
</html>
