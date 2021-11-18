<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>AldanaGo - Productos</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
                <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css" />
	</head>
	<body class="is-preload">
		<!-- Header -->
			<header id="header">
				<div class="inner">
                                    <a href="https://www.instagram.com/aldanago__/" class="image avatar" target="_blank"><img src="${pageContext.request.contextPath}/resources/images/aldanago_logo.jpg" alt="" /></a>
                                        <h1><strong><i>Somos AldanaGo</i></strong>, un emprendimiento encargado del envio de tus productos o servicios<br/>
					preparado para llegar al cliente final.<br/>
                                        Encuentranos en nuestras redes sociales como: <a href="https://www.instagram.com/aldanago__/" target="_blank"><strong>AldanaGo</strong></a>.</h1>
                                </div>
			</header>
		<!-- Main -->
			<div id="main">
				<!-- One -->
                                <section id="one">
                                    <header class="major">
                                        <h2>Bienvenidos a AldanaGo<br />                                                       
                                            Conoce nuestros PRODUCTOS.</h2>
                                    </header>
                                    <p>Contamos con diferentes tipos de productos gracias a nuestros socios.</p>
                                </section>
				<!-- Two -->
                                <section id="two">
                                    <h2>NUESTROS PRODUCTOS:</h2>
                                    <div class="row">
                                        <c:forEach items="${datosProducto}" var="dato"> 
                                            <article class="col-6 col-12-xsmall work-item">
							<a  href="${dato.url_producto}" class="image fit thumb">
                                                        <img src="${dato.url_producto}" alt="" /></a>
                                                        <h3>
                                                        <a href="ver.htm?id=${dato.id}" style="color: black">
                                                            <h2>Socio: ${dato.nombre_socio}
                                                               
                                                            </h2> 
                                                           <h2>Producto: ${dato.producto}</h2>
                                                           <hr>
                                                        </a>
                                                        </h3>
                                                           <h2>Precio: S/. ${dato.precio}</h2>
							
                                                    </article> 
                                        </c:forEach> 
                                    </div>
                                    <hr>
                                    <ul class="actions">
                                        <li><a href="#" class="button">Listar Productos</a></li>
                                        <li><a href="#" class="button">Agregar Productos</a></li>
                                        <li><a href="home.htm" class="button">Ver Socios</a></li>
                                    </ul>
                                </section>
			</div>
		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
                                            <li><a href="https://www.instagram.com/aldanago__/" target="_blank" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="https://wa.me/51965816742"  target="_blank" class="icon brands fa-whatsapp"><span class="label">WhatsApp</span></a></li>
						<li><a href="mailto:fj.verachamorro@gmail.com" target="_blank" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
                                        </ul>
                                        <div>
                                        </div>                                  
					<ul class="copyright">
						<li>&copy;AldanaGo <b> Servicio de delivery</b></li>
					</ul>
				</div>
			</footer>
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.poptrox.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
                   
	</body>
</html>