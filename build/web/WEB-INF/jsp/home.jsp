<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Examen T3 Sowa - UPN</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
						<p>Contamos con un amplio staff de socios de diferentes tipos de comida, aperitivos, comida rapido y servicios. Nuestra flota de delivey se encagar� de recoger 
                                                tu producto y llevarlo al cliente final.</p>
					</section>
				<!-- Two -->
					<section id="two">
						<h2>Nuestros socios:</h2>
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
         					<ul class="actions">
						<li><a href="listar.htm" class="button">Listar Socios</a></li>
                                                <li><a href="add.htm" class="button">Agregar nuevo socio...</a></li>
						</ul>
					</section>
			</div>
		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy;AldanaGo <b> Flota de delivery</b></li>
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