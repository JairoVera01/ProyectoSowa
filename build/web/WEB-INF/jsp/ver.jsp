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
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg">
        <title>Aldana Go - Ver::${persona.nombre}</title>
    </head>
    <body>
             <div class="container-md">
            <nav arial-label ="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item" aria-current="page">
                        <a href="listar.htm">Listado socios</a>
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
                                  <h1> Socio: ${persona.nombre} </h1><h2 class="text-secondary">Tipo de restaurante: ${persona.tipo_restaurante}</h2>
                              </div>
                              
                              <hr>
                              <h3 class="text-secondary"> Descripción: <br> ${persona.resumen_cv}  </h3>
                              <hr>
                              <div class="d-flex justify-content-around">
                                  <p class="fst-italic"> Correo de contacto:                     
                                      <a href="mailto:${persona.correo} ">${persona.correo} </a>
                                  </p>
                                  <p class="fw-bold">    Telefono:                                  
                                      <a href="https://api.whatsapp.com/send?phone=51${persona.telefono}">${persona.telefono}</a>
                                      
                                  </p>
                                  <br><!-- Pedido -->
                                  
                                  <a href="https://api.whatsapp.com/send?phone=51${persona.telefono}&text=Hola ${persona.nombre},Necesito Un pedido de: ${persona.tipo_restaurante}" target="_blank" class="btn btn-success">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                        <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"/>
                                        </svg>
                                        <p>Hacer pedido</p>
                                        </a>
                                  <hr>
               
                              </div> 
                          </article> 
                    </div>
                    </div>
        </div>
    </body>
</html>
