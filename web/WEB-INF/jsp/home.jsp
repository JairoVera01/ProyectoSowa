<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>AldanaGo - Delivery</title>
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
							Conoce a nuestro staff de socios.</h2>
						</header>
						<p>Contamos con un amplio staff de socios de diferentes tipos de comida, aperitivos, comida rapido y servicios. Nuestra flota de delivey se encagará de recoger 
                                                tu producto y llevarlo al cliente final.</p>
					</section>
				<!-- Two -->
					<section id="two">
						<h2>NUESTROS SOCIOS:</h2>
                                                <div class="row">
                                                <c:forEach items="${datosPersona}" var="dato"> 
                                                    <article class="col-6 col-12-xsmall work-item">
							<a  href="${dato.url_imagen}" class="image fit thumb">
                                                        <img src="${dato.url_imagen}" alt="" /></a>
                                                        <h3 >
                                                        <a href="ver.htm?id=${dato.id}" style="color: black">
                                                        ${dato.nombre}<br>${dato.tipo_restaurante}
                                                        </a>
                                                        </h3>
							<p>${dato.resumen_cv}</p>
                                                    </article> 
                                                </c:forEach> 
                                                </div>
                                                <hr>
         					<ul class="actions">
						<li><a href="listar.htm" class="button">Listar Socios</a></li>
                                                <li><a href="add.htm" class="button">Agregar Socio</a></li>
                                                <li><a href="productos.htm" class="button" style="background-color: rgba(0,0,255,0.3)">Ver Productos</a></li>
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
                                                <li><a download="" href="${pageContext.request.contextPath}../../resources/carta/carta_prueba.pdf" class="icon solid fa-download" ></a></li>
                                        </ul>
                                        <div>
                                        <h1>Mapa de nuestro local:</h1>
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1379.7710083628083!2d-76.87656538034186!3d-12.003416520471527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3b3b0f1e499%3A0xe2b0648e1ed8f3c5!2sPoliclinico%20Carapongo%20Medical%20Center!5e0!3m2!1ses-419!2spe!4v1637192746965!5m2!1ses-419!2spe" width="500px" height="180px" style="border-radius: 10px;" allowfullscreen="" loading="lazy"></iframe>
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